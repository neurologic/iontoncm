clear all
close all
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z1230/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z1460/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z1590/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z1810/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z2570/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z2680/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-300_L1000/Z3200/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-500_L1000/Z2000/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B444/Left_R-500_L1000/Z2450/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
base_data_All = [];
gz_data_All = [];

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z1550/ss001
[base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,0);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];
% [base_data, gz_data] = batchFANOionto(start,stop,blocksize,blocktype,sitetype,smooth,doprintout)

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z1670/ss001
[base_data2, gz_data2] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z1750/ss001
[base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z1860/ss001
[base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z2150/ss001
[base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z2330/ss001
[base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B445/Left_R-200_L1000/Z2770/ss001
[base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];


% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1000/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1055/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'su',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1151/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1260/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'su',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1330/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'su',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1440/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1480/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1570/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z1700/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'su',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z2650/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'su',0,1)
% % cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z780/ss001
% % batchrasterionto2
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z920/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,5,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z950/ss003
% [base_data, gz_data] = batchFANOionto(-2,12,5,[1 2 5],'su',0,1)
% cd /Users/kperks/GitHub/iontoncm/B493/Right_R-350_L1100/Z950/ss004
% [base_data, gz_data] = batchFANOionto(-2,12,5,[1 2 5],'su',0,1)
% 
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1110/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1150/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1260/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1310/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1440/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1520/ss003
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1640/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1760/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z2190/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z2250/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'su',0,1)
% cd /Users/kperks/GitHub/iontoncm/B484/Left_R-300_L1000/Z1370/ss001
% [base_data, gz_data] = batchFANOionto(-2,12,10,[1 2 5],'mu',0,1)


cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z830/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2040/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2100/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2250/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2350/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2480/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 3 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2600/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B450/Right_R-300_L1000/Z2800/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];


cd /Users/kperks/GitHub/iontoncm/B466/Left_R-200_L1000/Z780/ss002/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 4 24 5 3 23 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-200_L1000/Z2150/ss002/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 4 24 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-200_L1000/Z2210/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 4 24 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-200_L1000/Z2250/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-200_L1000/Z2311/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 4 24 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-200_L1000/Z2430/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 4 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-350_L1000/Z2800/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5 4 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B466/Left_R-350_L1000/Z2880/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];


cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z660/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z660/ss002/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2150/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2280/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2430/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2650/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2810/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2910/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z2990/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B504/LEFT_R-300_L1000/Z3032/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];


cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z970/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z1170/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z1461/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z1570/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z1850/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z2101/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z2220/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 5],'su',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z2620/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

cd /Users/kperks/GitHub/iontoncm/B490/Right_R-300_L1000/Z2811/ss001/
[base_data, gz_data] = batchFANOionto(-2,7,10,[1 2 24 5 3 5],'mu',0,1);
base_data_All = [base_data_All base_data];
gz_data_All = [gz_data_All gz_data];

%% split and combine gz and base data
% to get pre and post stim array that has 
% base as first half and gz for second half of split for Fano anal
start_stim = 2000;
boxWidth = 50;
data_len = (boxWidth * floor((start_stim - 1)/50));
pre_data = [];
post_data = [];
tmp_post = [];
tmp_pre = [];
for iar = 1:size(gz_data_All,2)
    this_ar_gz = gz_data_All(iar).spikes;
    this_ar_bs = base_data_All(iar).spikes;
    
    for itrial = 1:size(this_ar_gz,1)
        prestart = (start_stim - 1) - data_len;
    tmp_pre(itrial,:) = [this_ar_bs(itrial,prestart:(start_stim - 1)) ...
        this_ar_gz(itrial,prestart:(start_stim - 1)) ];
    
        postend = (start_stim + 50) + data_len;
    tmp_post(itrial,:) = [this_ar_bs(itrial,(start_stim + 50):4000) ...
        this_ar_gz(itrial,(start_stim + 50):4000) ];
    
    end 
    
    pre_data(iar).spikes = tmp_pre;
    post_data(iar).spikes = tmp_post;
    
end
%%
times  = 25:50:size(tmp_pre,2)-24; % from 1950 ms before target onset until 2000 ms after.
fanoParams.alignTime = size(tmp_pre,2)/2; % this time will become zero time fanoParams.boxWidth = 50; % 50 ms sliding window.
fanoParams.matchReps = 10;
fanoParams.binSpacing = 0.25;
fanoParams.boxWidth = boxWidth;
Result_pre = VarVsMean(pre_data, times, fanoParams); 
plotFano(Result_pre);

hfig = figure;hold on
subplot(4,1,1)
hold on
data_split = size(Result_pre.meanRateAll,1)/2;

plot(Result_pre.meanRateSelect(1:data_split),'color','k','LineWidth',3)
plot(Result_pre.meanRateSelect(data_split + 1 :end),'color','r','LineWidth',3)
axis tight
ylabel('mean count Raw','FontSize',16)

subplot(4,1,2);hold on
plot(Result_pre.FanoFactor(1:data_split),'color','k','LineWidth',3)
plot(Result_pre.FanoFactor(data_split + 1 :end),'color','r','LineWidth',3)
axis tight
ylabel('FanoFactor matched','FontSize',16)

subplot(4,1,3);hold on
range = max(Result_pre.FanoFactor)-min(Result_pre.FanoFactor);
bins = (range / 10);
edges = [min(Result_pre.FanoFactor):bins:max(Result_pre.FanoFactor)];
bins_b = histc(Result_pre.FanoFactor(1:data_split),edges);
bins_i = histc(Result_pre.FanoFactor(data_split + 1 :end),edges);
line(edges,bins_b,'color','k','LineWidth',3)
line(edges,bins_i,'color','r','LineWidth',3)
ylabel('p(FF)','FontSize',16)
kstest2(Result_pre.FanoFactor(1:data_split),Result_pre.FanoFactor(data_split + 1 :end))
subplot(4,1,4);hold on
FF = [(Result_pre.FanoFactor + Result_pre.Fano_95CIs(:,1)); ...
    (Result_pre.FanoFactor + Result_pre.Fano_95CIs(:,2))];
range = max(FF)-min(FF);
bins = (range / 10);
edges = [min(FF):bins:max(FF)];
FF_b = [(Result_pre.FanoFactor(1:data_split,1) + Result_pre.Fano_95CIs(1:data_split,1)); ...
    (Result_pre.FanoFactor(1:data_split,1) + Result_pre.Fano_95CIs(1:data_split,2))];
bins_b = histc(FF_b,edges)./size(FF_b,1);
FF_i = [(Result_pre.FanoFactor(data_split + 1 :end,1) + Result_pre.Fano_95CIs(data_split + 1 :end,1)); ...
    (Result_pre.FanoFactor(data_split + 1 :end,1) + Result_pre.Fano_95CIs(data_split + 1 :end,2))];
bins_i = histc(FF_i,edges)./size(FF_i,1);
line(edges,bins_b,'color','k','LineWidth',3)
line(edges,bins_i,'color','r','LineWidth',3)
ylabel('p(FF) : 95%CI added','FontSize',16)

kstest2(FF_b,FF_i)
set(hfig,'Position',[440    92   487   706]);


times  = 25:50:size(tmp_post,2)-24; % from 1950 ms before target onset until 2000 ms after.
fanoParams.alignTime = size(tmp_post,2)/2; % this time will become zero time fanoParams.boxWidth = 50; % 50 ms sliding window.
fanoParams.matchReps = 10;
fanoParams.binSpacing = 0.25;
fanoParams.boxWidth = 50;
Result_post = VarVsMean(post_data, times, fanoParams); 
plotFano(Result_post);

hfig = figure;hold on
subplot(4,1,1)
hold on
data_split = size(Result_post.meanRateAll,1)/2;
% plot(Result_post.meanRateAll(1:data_split),'--.k','LineWidth',2)
% plot(Result_post.meanRateAll(data_split + 1 :end),'--.r','LineWidth',2)
plot(Result_post.meanRateSelect(1:data_split),'color','k','LineWidth',3)
plot(Result_post.meanRateSelect(data_split + 1 :end),'color','r','LineWidth',3)
axis tight
ylabel('mean count Raw','FontSize',16)

subplot(4,1,2);hold on
% plot(Result_post.FanoFactorAll(1:data_split),'--.k','LineWidth',2)
% plot(Result_post.FanoFactorAll(data_split + 1 :end),'--.r','LineWidth',2)
plot(Result_post.FanoFactor(1:data_split),'color','k','LineWidth',3)
plot(Result_post.FanoFactor(data_split + 1 :end),'color','r','LineWidth',3)
axis tight
ylabel('FanoFactor matched','FontSize',16)

subplot(4,1,3);hold on
range = max(Result_post.FanoFactor)-min(Result_post.FanoFactor);
bins = (range / 10);
edges = [min(Result_post.FanoFactor):bins:max(Result_post.FanoFactor)];
bins_b = histc(Result_post.FanoFactor(1:data_split),edges)./size(Result_post.FanoFactor,1);
bins_i = histc(Result_post.FanoFactor(data_split + 1 :end),edges)./size(Result_post.FanoFactor,1);
line(edges,bins_b,'color','k','LineWidth',3)
line(edges,bins_i,'color','r','LineWidth',3)
ylabel('p(FF)','FontSize',16)
kstest2(Result_post.FanoFactor(1:data_split),Result_post.FanoFactor(data_split + 1 :end))

subplot(4,1,4);hold on
FF = [(Result_post.FanoFactor + Result_post.Fano_95CIs(:,1)); ...
    (Result_post.FanoFactor + Result_post.Fano_95CIs(:,2))];
range = max(FF)-min(FF);
bins = (range / 10);
edges = [min(FF):bins:max(FF)];
FF_b = [(Result_post.FanoFactor(1:data_split,1) + Result_post.Fano_95CIs(1:data_split,1)); ...
    (Result_post.FanoFactor(1:data_split,1) + Result_post.Fano_95CIs(1:data_split,2))];
bins_b = histc(FF_b,edges)./size(FF_b,1);
FF_i = [(Result_post.FanoFactor(data_split + 1 :end,1) + Result_post.Fano_95CIs(data_split + 1 :end,1)); ...
    (Result_post.FanoFactor(data_split + 1 :end,1) + Result_post.Fano_95CIs(data_split + 1 :end,2))];
bins_i = histc(FF_i,edges)./size(FF_i,1);
line(edges,bins_b,'color','k','LineWidth',3)
line(edges,bins_i,'color','r','LineWidth',3)
ylabel('p(FF) : 95%CI added','FontSize',16)
kstest2(FF_b,FF_i)
set(hfig,'Position',[440    92   487   706]);

%% Do the FanoFactor analysis across all cells...

times = 50:50:4000; % from 1950 ms before target onset until 2000 ms after.
fanoParams.alignTime = 2000; % this time will become zero time fanoParams.boxWidth = 50; % 50 ms sliding window.
fanoParams.matchReps = 10;
fanoParams.binSpacing = 0.25;
fanoParams.boxWidth = 50;
Result_base = VarVsMean(base_data_All, times, fanoParams); 
plotFano(Result_base);
% mv = ScatterMovie(Result_base);
% yourName = '/Users/kperks/GitHub/iontoncm/FANOanalysis/baseline_condition_matched.avi';
% movie2avi(mv, yourName, 'FPS', 15, 'compression', 'none');

Result_gz = VarVsMean(gz_data_All, times, fanoParams); 
plotFano(Result_gz);
% mv = ScatterMovie(Result_base);
% yourName = '/Users/kperks/GitHub/iontoncm/FANOanalysis/InhibitionBlocked_condition_matched.avi';
% movie2avi(mv, yourName, 'FPS', 15, 'compression', 'none');


figure;hold on
plot(Result_base.meanRateAll,'color','k')
plot(Result_gz.meanRateAll,'color','r')
axis tight


figure;hold on
plot(Result_base.FanoFactorAll,'color','k')
plot(Result_gz.FanoFactorAll,'color','r')
axis tight

%when did mean matching...
figure;hold on
plot(Result_base.meanRateSelect,'color','k')
plot(Result_gz.meanRateSelect,'color','r')
axis tight


figure;hold on
plot(Result_base.FanoFactor,'color','k')
plot(Result_gz.FanoFactor,'color','r')
axis tight



%%
scatterParams.axLim = 'auto';
scatterParams.axLen = 5;
plotScatter(Result_base, -1000, scatterParams); 
text(2.5, 7, '1000 ms before target', 'hori', 'center'); 
plotScatter(Result_base, 500, scatterParams);
text(2.5, 7, '500 ms after target', 'hori', 'center'); 
plotScatter(Result_base, 1500, scatterParams);
text(2.5, 7, '1500 ms after target', 'hori', 'center');


