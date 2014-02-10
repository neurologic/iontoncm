function []=iontomaketoe(blocksize,blocktypes,sitetype)
% splits ionto data into separate files for each drug condition for further
% analysis
% blocksize = # reps in each blcok
% blocktypes = explains what drug was used in each block 
%       1 = baseline
%       2 = gabazine
%       3 = gaba
%       4 = saclofen
%       5 = recovery
% sitetype = what type of recording 
%       su = single unit
%       mu = multi unit
% 

%blocksize=10;
%blocktypes=[1 2 5];
%sitetype='mu';
%%
!rm *base.txt;
!rm *gz.txt;
!rm *rec.txt;
datapath='/home/jason/data/iontoncm/forstrf/';

%get trials for baseline condition
baserepsmax=find(blocktypes==1)*blocksize;
baserepsmin=baserepsmax-(blocksize-1);
basereps=baserepsmin:baserepsmax;

%get trials for gabazine condition
gzrepsmax=find(blocktypes==2)*blocksize;
gzrepsmin=gzrepsmax-(blocksize-1);
gzreps=gzrepsmin:gzrepsmax;

%get trials for recovery condition if they exist
recrepsmax=find(blocktypes==5)*blocksize;
recrepsmin=recrepsmax-(blocksize-1);
recreps=recrepsmin:recrepsmax;

pretime=2; %in sec
posttime=2; % in sec
files = dir('*dbmean_toe.txt');
allspikes=[];

for i=1:length(files)
    toelist = files(i).name;
    %toelist = char(files(i));
    [stimfile, subjectID, pen, site, sort, nreps, nspikes, toes, alltoes, stimsamprate]= readtoe(toelist);  
    stim=strtok(stimfile,'_');
    
    if i==1
        celldir=sprintf('%s%s%s',subjectID,site,sort);
        newdir=strcat(datapath,celldir);
        mkdir(newdir);
        newdir=strcat(newdir,'/');
        basedir=strcat(newdir,'base');
        mkdir(basedir);
        gzdir=strcat(newdir,'gz');
        mkdir(gzdir);
        recdir=strcat(newdir,'rec');
        mkdir(recdir); 
    end
    
    basename=sprintf('%s%s%s%sbase_toe.txt',subjectID, site,sort,stim);
    basefid=fopen(basename,'w');
    srstring=sprintf('StimSampleRate: %d',stimsamprate);
    fprintf(basefid,'%s\n%s\n%s\n%s\n%s\n%s\n%d\n', stimfile, srstring,subjectID,pen,site,sort,length(basereps));
    basetoes=[];
    for j=1:length(basereps)
        fprintf(basefid, '%d\n',nspikes(basereps(j))); 
        basetoes=[basetoes; toes{basereps(j)}{1}];
    end
    for k=1:length(basetoes)
        fprintf(basefid, '%.6f\n', basetoes(k)) ;
    end
    fclose(basefid);
    copyfile(basename,basedir);

    gzname=sprintf('%s%s%s%sgz_toe.txt',subjectID, site,sort,stim);
    gzfid=fopen(gzname,'w');
    fprintf(gzfid,'%s\n%s\n%s\n%s\n%s\n%s\n%d\n', stimfile, srstring,subjectID,pen,site,sort,length(gzreps));
    gztoes=[];
    for j=1:length(gzreps)
        fprintf(gzfid, '%d\n',nspikes(gzreps(j))); 
        gztoes=[gztoes; toes{gzreps(j)}{1}];
    end
    for k=1:length(gztoes)
        fprintf(gzfid, '%.6f\n', gztoes(k)) ;
    end
    fclose(gzfid);
    copyfile(gzname,gzdir);

    recname=sprintf('%s%s%s%srec_toe.txt',subjectID, site,sort,stim);
    recfid=fopen(recname,'w');
    fprintf(recfid,'%s\n%s\n%s\n%s\n%s\n%s\n%d\n', stimfile, srstring,subjectID,pen,site,sort,length(recreps));
    rectoes=[];
    for j=1:length(recreps)
        fprintf(recfid, '%d\n',nspikes(recreps(j))); 
        rectoes=[rectoes; toes{recreps(j)}{1}];
    end
    for k=1:length(rectoes)
        fprintf(recfid, '%.6f\n', rectoes(k)) ;
    end
    fclose(recfid);
    copyfile(recname,recdir);


 

    
end

%%

% if strmatch(sitetype,'su')==1
%     
%     copyfile(
%    % !cp st*_*spikes.mat ~/data/iontoncm/splitbydrug/su/.
%     !cp *base.txt ~/data/iontoncm/forstrf/su/. 
%     !cp *gz.txt ~/data/iontoncm/forstrf/su/.
%     !cp *rec.txt ~/data/iontoncm/forstrf/su/.
% else
%    !cp *base.txt ~/data/iontoncm/forstrf/mu/. 
%     !cp *gz.txt ~/data/iontoncm/forstrf/mu/.
%     !cp *rec.txt ~/data/iontoncm/forstrf/mu/.
% end
    
end
