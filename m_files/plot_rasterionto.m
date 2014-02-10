

function [ax]=plot_rasterionto(toelist, start, basereps, washreps, smooth, doprintout)
stimtimes = [ 9.915 9.082 10.432 9.225 9.273 9.579 9.334 9.292 9.654 9.078 10.257 10.532 10.135 10.611 10.719 10.124 10.532 10.719 10.124 10.160 9.954 10.155 9.000 10.940];
stimnames = {'A1'; 'A2'; 'A3'; 'A4'; 'A5'; 'B1'; 'B2'; 'B3'; 'B4'; 'B5'; 'N1'; 'N2'; 'N3'; 'N4'; 'N5'; 'N6'; 'C1'; 'C2'; 'D1'; 'D2'; 'E1'; 'E2'; 'S1'; 'S2'};

binsize = 20; %in msec
bps = 1000/binsize;
stimpath = '~/stims/gng_motifs';
ax(3)=0;

clear toes;
clear n;
clear psth;
clear nspikes;


%read in the spike2 format toelist
[stimfile, subjectID, pen, site, sort, nreps, nspikes, toes, alltoes] = readtoe(toelist);
count = mean(nspikes);

figname = strrep(sprintf('subj:%s  pen:%s  site:%s  sort:%s  stim:%s', subjectID,pen,site,sort,stimfile), '_', '\_');
stim = strtok(stimfile, '_');
    stim = strtok(stim, '.'); 
       stimdur = stimtimes(strmatch(stim, stimnames, 'exact'));
%stop=stimdur+2;
stop =12;
% generate the raster
ax(1) = subplot(3,1,1);
hold on; 
xmin=start;xmax=stop;
ymin=0.40;
ymax=double(nreps)+.70;
%patch([xmin xmin xmax xmax],[basereps nreps-washreps nreps-washreps basereps],[.5 .5 .5],'edgealpha',0)
for i=1:nreps
    currRep=cell2mat(toes{i});
    for j = 1:length(currRep)
       % line([currRep(j) currRep(j)], [double(i)-.4 double(i)+.4],'Linewidth',.5,'Color','k');
           plot(cell2mat(toes{:,i}), ones(nspikes(i),1).* double(i), 'k.','MarkerSize',1);                                                 
                                                              
    end                                                            
end
hold  off;

axis([xmin xmax ymin ymax]);
ylabel('Rep');
ax_pos = get(ax(1), 'Position');
set(ax(1),'XTickLabel', '');
title(figname);
set(gca,'xtick',[]);
set(gca,'yaxislocation','left');
set(gca,'tickdir','out');
box on;

%generate histogram
ax(2) = subplot(3,1,2);
ax2_pos = get(ax(1), 'Position');
ax2_pos(2)= ax2_pos(2)-ax2_pos(4);
set(ax(2), 'Position',ax2_pos); 
nbins = (stop-start) * bps;
newtoes = alltoes(find(alltoes>=start));
newtoes = newtoes(find(newtoes<=stop));
%[n, xpsth] = hist(newtoes, nbins+2);
xbins = linspace(start, stop, (stop-start)*bps);
n = histc(newtoes, xbins);
ymax = max(n)+1;

if smooth == 1
  w=3;
  ng=[0.2261 0.5478 0.2261];
  tamw=(w-1)/2;
  if (w>3)
   for i=1:tamw-1
     ng=conv(ng,ng);
   end
  end
  lng=length(ng);
  limite=(lng+1)/2;
  lc=length(n);
  for i=limite:lc-limite
   n_int=0;
    for k=1:length(ng)-1
     n_int=(ng(k)*n(i-limite+k))+n_int;
    end
   n(i)=n_int;
  end
    psth=n;
  plot(xbins, psth);
else
 psth=n;
 bar(xbins,psth,'k');
end
if ymax >10
    ymax=ymax;
else
    ymax =10;
end

axis([xmin xmax ymin ymax]);
ylabel('Spikes');
set(ax(2),'XTickLabel', '');
set(gca,'xtick',[]);
set(gca,'yaxislocation','left');
set(gca,'tickdir','out');
box on;

%do the spectrogram
 ax(3) = subplot(3,1,3);
 ax3_pos = get(ax(3), 'Position');
 ax3_pos(4)= ax2_pos(2)-ax3_pos(2);
 set(ax(3), 'Position',ax3_pos);

 fullstim = [stimpath '/' stimfile];
 [Y,FS,nbits]=wavread(fullstim);
 nsamples = length(Y);
%now pad the sound so that it is aligned with the raster and psth
 if (start<0)
     Y = [zeros(abs(start)* FS,1); Y];
    % fprintf('adding %g samples to the start of the stim\n', abs(start)*FS);
 elseif (xmin>0)
     Y = Y((start*FS)+1:nsamples); 
    % fprintf('subtracting %g samples from the front of the stimuli\n', start*FS);
 end

 if (stop*FS>nsamples)
     Y = [Y; zeros((stop*FS)-nsamples,1) ];
    % fprintf('adding %g samples to the end of the stimulus\n', stop*FS-nsamples);
 else
     Y = Y(1:((stop-start)*FS));   
   %  fprintf('subtracting %g samples from the end of the stimulus\n', nsamples-(stop*FS));
 end

% then do the spectrogram
 nfft = 512;
 window = 512;
 overlap = .75;
 nlap = round(window*overlap);
 [S,F,T,P] = spectrogram(Y,window,nlap,nfft,FS, 'yaxis');
FS;
 newT = xmin:((xmax-xmin)/length(T)):xmax;
 freqs=0:22050/(nfft/2):22050;
  if(length(newT)~=length(newT))
     newT=newT(1:length(T));
  end
  clim = [-200  -65];
 imagesc(newT,freqs, 20*log10(P),clim);  
 axis xy;
 colormap(flipud(colormap(gray(256))));
 axis([xmin xmax 0 11025]);
 xlabel('Time(sec)');
 ylabel('Freq (Hz)');
set(gca,'yaxislocation','left');
set(gca,'xaxislocation','bottom');
set(gca,'tickdir','out');
set(gcf, 'Color', [1 1 1]);
set(gcf, 'Position', [360 635 883 286]);
set(gcf,'Name',figname,'NumberTitle','off' );
%set(gcf, 'PaperPositionMode', 'auto', 'Toolbar', 'none', 'MenuBar', 'none');
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperOrientation', 'landscape');
set(gcf, 'PaperPosition', [.15 .15 10.5 8]);

if (doprintout)
  %set(gcf,'PaperOrientation', 'landscape');
  print -noui 
end



end  %function end
