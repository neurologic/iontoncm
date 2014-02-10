function []=ionto(blocksize,blocktypes,sitetype,doplot,doprintout)
% blocksize = # reps in each blcok
% blocktypes = explains what drug was used in each block 
%       ba = baseline
%       gz = gabazine
%       gb = gaba
%       sc = saclofen
%       re = recovery
% sitetype = what type of recording 
%       su = single unit
%       mu = multi unit
%



stimtimes = [ 9.915 9.082 10.432 9.225 9.273 9.579 9.334 9.292 9.654 9.078 10.257 10.532 10.135 10.611 10.719 10.124 10.532 10.719 10.124 10.160 9.954 10.155 9.000 10.940 10.571 9.932 1.000 1.000 1.000 1.000 1.000 1.000];
stimnames = {'A1'; 'A2'; 'A3'; 'A4'; 'A5'; 'B1'; 'B2'; 'B3'; 'B4'; 'B5'; 'N1'; 'N2'; 'N3'; 'N4'; 'N5'; 'N6'; 'C1'; 'C2'; 'D1'; 'D2'; 'E1'; 'E2'; 'S1'; 'S2'; 'H1'; 'H2'; '2'; '4'; '6'; '8'; '10'; '12'};

bird = {'st444'; 'st445'; 'st493'; 'st484'};
trainset = {'B1' 'B2' 'D1' 'D2'; 'A2' 'A4' 'B1' 'B2'; 'D1' 'D2' 'E1' 'E2'; 'E1' 'E2' 'A2' 'A4'};
goset = {'B1' 'B2'; 'A2' 'A4'; 'D1' 'D2'; 'E1' 'E2'};
nogoset = { 'D1' 'D2'; 'B1' 'B2'; 'E1' 'E2'; 'A2' 'A4'};
novset = { 'A2' 'A4' 'E1' 'E2'; 'D1' 'D2' 'E1' 'E2'; 'A2' 'A4' 'B1' 'B2'; 'B1' 'B2' 'D1' 'D2'};





pretime=2; %in sec
posttime=2; % in sec

files = dir('*dbmean_toe.txt');

subindx=strcmpi(bird,subjectID);

bps = 1000/binsize;



allspikes=[];
trainstims=[];
novstims=[];
gostims=[];
nogostims=[];
%allisis=[];
for i=1:length(files)
    toelist = files(i).name;
    %toelist = char(files(i));
    [stimfile, subjectID, pen, site, sort, nreps, nspikes, toes, alltoes] = readtoe(toelist);  
    stim = strtok(stimfile, '_');   
    stim = strtok(stim, '.');
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
    othertoes = alltoes(find(alltoes>=0));
    othertoes = othertoes(find(othertoes<=stimdur));
    xbins = linspace(-2, stimdur+2, (stimdur+4)*bps);
    allxbins{i}=xbins;
    numxbins(i)=length(xbins);
    %psth{i} = histc(othertoes, xbins);
    psth=[];
    
    for moo=1:nreps
            
            newtoes = toes{moo}{1}(find(toes{moo}{:}>=0));%only use spikes after stim starts
            newtoes = newtoes(find(newtoes<=stimdur)); %get rid of spikes after stim over
            %newtoes = round(newtoes*1000);  %may want to take this out
            %newtoes = (newtoes*1000); 
            %tpsth=zeros(size(xbins));
            atoes=toes{moo}{1};
            
            isis = diff(newtoes);
            isis = isis(find(isis>0));
            allisis{moo}=isis;
            
            if isempty(atoes)==1
                
                tpsth=zeros(1,length(xbins));
            else 
                
                tpsth=histc(atoes, xbins);
            
                
                
            end
            psth(moo,:) = tpsth';
            
            oldrate(moo,i) = length(newtoes)/(stimdur);
                
               
              sponr(moo,i) = length( toes{moo}{1}(find(toes{moo}{:}<0)))/2;
              
         
    end
    
    
    allpsth{i}=psth;
    numspikes(i)=length(alltoes);
    spontoes = alltoes(find(alltoes<0));
    sponrate = length(spontoes)/(2*double(nreps)); 
   
   % normrate = oldrate/sponrate;
    normrate = oldrate;
    stims{i} = stim;
    reps(i) = nreps;
    %normrates(i) = normrate;
    sponrates(i)=sponrate;

end

purerate=mean(normrate);
muspon = mean(sponrates);






for j=1:size(allpsth,2)
   currpsth=allpsth{j};
   
   basepsth=mean(currpsth(1:basereps,:));
   drugpsth=mean(currpsth(basereps+1:nreps-washreps,:));
   washpsth=mean(currpsth(nreps-washreps+1:nreps,:));
   mcurrpsth=mean(currpsth);
   
   
  
end


























   
    
    
    
    depth=str2double(strtok(site,'Z'));


outfname = sprintf('%s_%s_%s_%s_ncmionto',subjectID,pen,site,sort); %use for cells labeled by location


 
 
 % eval (['save ' outfname ' baseisis drugisis washisis trainperdiff novperdiff perdiff depth zbasego zbasenogo zdruggo zdrugnogo zbasenov zbasetrain zdrugnov zdrugtrain l_songperinc u_songperinc baselifesparse druglifesparse washlifesparse basebias drugbias washbias']);
 
% !cp *ss*_ncmionto.mat ~/data/iontoncm/mean/.

 
 







end
