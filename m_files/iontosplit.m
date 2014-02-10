%function []=iontosplit(blocksize,blocktypes,sitetype)
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

blocksize=10;
blocktypes=[1 2 5];
sitetype='mu';


stimtimes = [ 9.915 9.082 10.432 9.225 9.273 9.579 9.334 9.292 9.654 9.078 10.257 10.532 10.135 10.611 10.719 10.124 10.532 10.719 10.124 10.160 9.954 10.155 9.000 10.940 10.571 9.932 1.000 1.000 1.000 1.000 1.000 1.000];
stimnames = {'A1'; 'A2'; 'A3'; 'A4'; 'A5'; 'B1'; 'B2'; 'B3'; 'B4'; 'B5'; 'N1'; 'N2'; 'N3'; 'N4'; 'N5'; 'N6'; 'C1'; 'C2'; 'D1'; 'D2'; 'E1'; 'E2'; 'S1'; 'S2'; 'H1'; 'H2'; '2'; '4'; '6'; '8'; '10'; '12'};

bird = {'st444'; 'st445'; 'st493'; 'st484'};
trainset = {'B1' 'B2' 'D1' 'D2'; 'A2' 'A4' 'B1' 'B2'; 'D1' 'D2' 'E1' 'E2'; 'E1' 'E2' 'A2' 'A4'};
goset = {'B1' 'B2'; 'A2' 'A4'; 'D1' 'D2'; 'E1' 'E2'};
nogoset = { 'D1' 'D2'; 'B1' 'B2'; 'E1' 'E2'; 'A2' 'A4'};
novset = { 'A2' 'A4' 'E1' 'E2'; 'D1' 'D2' 'E1' 'E2'; 'A2' 'A4' 'B1' 'B2'; 'B1' 'B2' 'D1' 'D2'};

%get trials for baseline condition
baserepsmax=find(blocktypes==1)*blocksize;
baserepsmin=baserepsmax-(blocksize-1);
basereps=baserepsmin:baserepsmax;

%get trials for gabazine condition
gzrepsmax=find(blocktypes==2)*blocksize;
gzrepsmin=gzrepsmax-(blocksize-1);
gzreps=gzrepsmin:gzrepsmax;
%get trials for gaba condition if they exist
if isempty(find(blocktypes==3))==0
    gbrepsmax=find(blocktypes==3)*blocksize;
    gbrepsmin=gbrepsmax-(blocksize-1);
    gbreps=gbrepsmin:gbrepsmax;
end
%get trials for saclofen condition if they exist
if isempty(find(blocktypes==4))==0
    sacrepsmax=find(blocktypes==4)*blocksize;
    sacrepsmin=sacrepsmax-(blocksize-1);
    sacreps=sacrepsmin:sacrepsmax;
end
%get trials for recovery condition if they exist
if isempty(find(blocktypes==5))==0
    recrepsmax=find(blocktypes==5)*blocksize;
    recrepsmin=recrepsmax-(blocksize-1);
    recreps=recrepsmin:recrepsmax;
end
% get trials for gabazine+saclofen condition if exists 
if isempty(find(blocktypes==24))==0
    gzsacrepsmax=find(blocktypes==24)*blocksize;
    gzsacrepsmin=gzsacrepsmax-(blocksize-1);
    gzsacreps=gzsacrepsmin:gzsacrepsmax;
    
end
% get trials for gabazine+gaba condition if exists 
if isempty(find(blocktypes==23))==0
    gzgbrepsmax=find(blocktypes==23)*blocksize;
    gzgbrepsmin=gzgbrepsmax-(blocksize-1);
    gzgbreps=gzgbrepsmin:gzgbrepsmax;
    
end

pretime=2; %in sec
posttime=2; % in sec
files = dir('*dbmean_toe.txt');
allspikes=[];
trainstims=[];
novstims=[];
gostims=[];
nogostims=[];

for i=1:length(files)
    toelist = files(i).name;
    %toelist = char(files(i));
    [stimfile, subjectID, pen, site, sort, nreps, nspikes, toes, alltoes] = readtoe(toelist);  
    subindx=strcmpi(bird,subjectID);
    stim = strtok(stimfile, '_');   
    stim = strtok(stim, '.');
    stims{i}=stim;
     if sum(strcmpi(stim,trainset(subindx,:)))>0
    trainstims=[trainstims  i];
    end
    
    if sum(strcmpi(stim,goset(subindx,:)))>0
    gostims=[gostims  i];
    end
    
    if sum(strcmpi(stim,nogoset(subindx,:)))>0
    nogostims=[nogostims  i];
    end
    if sum(strcmpi(stim,novset(subindx,:)))>0
    novstims=[novstims  i];
    end
        
    stimdur = stimtimes(strmatch(stim, stimnames, 'exact'));
    stimdurs(i)=stimdur;
    %othertoes = alltoes(find(alltoes>=0));
    %othertoes = othertoes(find(othertoes<=stimdur));
    for moo=1:nreps
            
            newtoes = toes{moo}{1}(find(toes{moo}{:}>=0));%only use spikes after stim starts
            newtoes = newtoes(find(newtoes<=stimdur)); %get rid of spikes after stim over 
            spikes{i,moo}=newtoes;                      
    end
end
depth=str2double(strtok(site,'Z'));
if mean(stimdurs) > 7
   stimlength='l'; 
else 
    stimlength='s';
end

%make separate file with spikes for each drug condition
basespikes=spikes(:,basereps)
%basefname = sprintf('%s_%s_%s_%s_basespikes',subjectID,pen,site,sort); %use for cells labeled by location
%eval (['save ' basefname ' basespikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
gzspikes=spikes(:,gzreps);
%gzfname = sprintf('%s_%s_%s_%s_gzspikes',subjectID,pen,site,sort); %use for cells labeled by location
%eval (['save ' gzfname ' gzspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
if isempty(find(blocktypes==3))==0
        gbspikes=spikes(:,gbreps);
 %       gbfname = sprintf('%s_%s_%s_%s_gbspikes',subjectID,pen,site,sort); %use for cells labeled by location
 %       eval (['save ' gbfname ' gbspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
end
if isempty(find(blocktypes==4))==0
        sacspikes=spikes(:,sacreps);
  %      sacfname = sprintf('%s_%s_%s_%s_sacspikes',subjectID,pen,site,sort); %use for cells labeled by location
  %      eval (['save ' sacfname ' sacspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
end
if isempty(find(blocktypes==5))==0
    recspikes=spikes(:, recreps);
  %  recfname = sprintf('%s_%s_%s_%s_recspikes',subjectID,pen,site,sort); %use for cells labeled by location
  %  eval (['save ' recfname ' recspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
end
if isempty(find(blocktypes==24))==0
    gzsacspikes=spikes(:,gzsacreps);
end
if isempty(find(blocktypes==23))==0
    gzgbspikes=spikes(:,gzgbreps);
end
    
for m=1:length(stims)
    stimbasename = sprintf('%s_%s_%s_%s_base',subjectID,site,sort,stims{m});
    stimbasespikes = basespikes(m,:);
    spikes=stimbasespikes;
    eval (['save ' stimbasename ' spikes stimbasespikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    stimgzname = sprintf('%s_%s_%s_%s_gz',subjectID,site,sort,stims{m});
    stimgzspikes = gzspikes(m,:);
    spikes=stimgzspikes;
    eval (['save ' stimgzname ' spikes stimgzspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    if isempty(find(blocktypes==3))==0
        stimgbname = sprintf('%s_%s_%s_%s_gb',subjectID,site,sort,stims{m});
        stimgbspikes = gbspikes(m,:);
        spikes = stimgbspikes;
        eval (['save ' stimgbname ' spikes stimgbspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    end
    if isempty(find(blocktypes==4))==0
        stimsacname = sprintf('%s_%s_%s_%s_sac',subjectID,site,sort,stims{m});
        stimsacspikes = sacspikes(m,:);
        spikes=stimsacspikes;
        eval (['save ' stimsacname ' spikes stimsacspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    end
    if isempty(find(blocktypes==5))==0
        stimrecname = sprintf('%s_%s_%s_%s_rec',subjectID,site,sort,stims{m});
        stimrecspikes = recspikes(m,:);
        spikes=stimrecspikes;
        eval (['save ' stimrecname ' spikes stimrecspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    end
    
    if isempty(find(blocktypes==24))==0
        stimgzsacname=sprintf('%s_%s_%s_%s_gzsac',subjectID,site,sort,stims{m});
        stimgzsacspikes=gzsacspikes(m,:);
        spikes=stimgzsacspikes;
        eval (['save ' stimgzsacname ' spikes stimgzsacspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    end
 
    if isempty(find(blocktypes==23))==0
        stimgzgbname=sprintf('%s_%s_%s_%s_gzgb',subjectID,site,sort,stims{m});
        stimgzgbspikes=gzgbspikes(m,:);
        spikes=stimgzgbspikes;
            eval (['save ' stimgzgbname ' spikes stimgzgbspikes stimlength depth sitetype stims trainstims novstims gostims nogostims']);
    end
end

if strmatch(sitetype,'su')==1
   % !cp st*_*spikes.mat ~/data/iontoncm/splitbydrug/su/.
    !cp *_*stim.mat ~/data/iontoncm/forstrf/su/. 
else
   % !cp st*_*spikes.mat ~/data/iontoncm/splitbydrug/mu/.  
    !cp *_*stim.mat ~/data/iontoncm/forstrf/mu/.     
end
    
%end
