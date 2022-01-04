data3 = data3(:,:,start:(start+slices));


%% 2D Filter

%% gauss
sigma = 2;
[gauss, timed] = gaussDenoise3D(homePath,data3,sigma);

result = {};
result.data = gauss;
result.time = timed;
disp("gauss done in "+timed+"s");

save(fullfile(homePath,"results\",strcat("gauss",datestr(now,formatOut),".mat")),'result');
clear gauss;
clear result;


%% guided image filter
[gif, timed] = guidedImageDenoise3D(homePath,data3);

result = {};
result.data = gif;
result.time = timed;
disp("guided image filtering done in "+timed+"s");

save(fullfile(homePath,"results\",strcat("gif",datestr(now,formatOut),".mat")),'result');
clear gif;
clear result;


%% block matching
noiseVar = 0.02;
[bm3d, timed]= bm3dDenoise3D(homePath,data3,noiseVar);

result = {};
result.data = bm3d;
result.time = timed;
disp("block matching done in "+timed+"s");
save(fullfile(homePath,"results\",strcat("bm3d",datestr(now,formatOut),".mat")),'result');
clear bm3d;
clear result;


%% laplacian
sigma = 0.1;
alpha = 4.0;
beta = 1.0;

[laplace, timed] = laplacianDenoise3D(homePath,data3, sigma, alpha, beta);

result = {};
result.data = laplace;
result.time = timed;
disp("laplace done in "+timed+"s");

save(fullfile(homePath,"results\",strcat("laplace",datestr(now,formatOut),".mat")),'result');
clear laplace;
clear result;


%% mean box filter
filterSizes = [3, 5, 7];
for fs = 1: length(filterSizes)
    mbox = meanBoxDenoise3D(homePath,data3, filterSizes(fs));
    
    result = {};
    result.data = mbox;
    result.time = timed;
    
    disp("mean box with filter size "+filterSizes(fs)+" done in "+timed+"s");

    
    save(fullfile(homePath,"results\",strcat("mbox_",num2str(filterSizes(fs)),"_",datestr(now,formatOut),".mat")),'result');
    clear mbox;
    clear result;
end


%% median filter
[median2D, timed] = medianDenoise3D(homePath,data3);

result = {};
result.data = median2D;
result.time = timed;

disp("median filter done in "+timed+"s");

save(fullfile(homePath,"results\",strcat("median2D",datestr(now,formatOut),".mat")),'result');
clear median2D;
clear result;


%% non local means filter
value = 0;
[nlm, timed] = nonLocalMeansDenoise3D(homePath,data3,value);

result = {};
result.data = nlm;
result.time = timed;

disp("non local means filter done in "+timed+"s");

save(fullfile(homePath,"results\",strcat("nlm",datestr(now,formatOut),".mat")),'result');
clear nlm;
clear result;


%% wiener filter
filterN = 3;
filterM = 3;
[wiener, timed] = wienerDenoise3D(homePath,data3,filterN,filterM);

result = {};
result.data = wiener;
result.time = timed;

disp("wiener filter done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("wiener",datestr(now,formatOut),".mat")),'result');
clear wiener;
clear result;


%% total variation
lambda = 1.0;
iter = 100;
[tvd, timed] = totalVariationDenoise3D(homePath,data3,lambda,iter);

result = {};
result.data = tvd;
result.time = timed;

disp("total variation denoising done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("tvd",datestr(now,formatOut),".mat")),'result');
clear tvd;
clear result;

%% WAVELETS

%% neighShrink
levels = 4;
sigma = 30; 
wtype = 'sym8';
[nshrink,timed] = neighShrinkDenoise3D(homePath,data3, levels, sigma, wtype);

result = {};
result.data = nshrink;
result.time = timed;

disp("neighshrink done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("nshrink",datestr(now,formatOut),".mat")),'result');
clear nshrink;
clear result;

%% wavelet denoise matlab
[matwavm,timed] = matlabWaveletDenoise3D(homePath,data3);

result = {};
result.data = matwavm;
result.time = timed;

disp("wavelet denoise matlab done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("matwav",datestr(now,formatOut),".mat")),'result');
clear matwav;
clear result;


%% 3D Filter

%% gauss 3D
paddings = ["replicate", "circular", "symmetric", "numeric", "scalar"];
filterSize = 5;
filterDomains = ["frequency", "spatial"];
sigma = 2;

tic;
gauss3D = imgaussfilt3(data3,sigma);
timed = toc;

result = {};
result.data = gauss3D;
result.time = timed;

disp("3D gauss done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("gauss3D",datestr(now,formatOut),".mat")),'result');
clear gauss3D;
clear result;



%% box filtering 3D
filterSize = 3;

tic;
box3D = imboxfilt3(data3,filterSize);
timed = toc;

result = {};
result.data = box3D;
result.time = timed;

disp("3D box filter done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("box3D",datestr(now,formatOut),".mat")),'result');
clear box3D;
clear result,


% median filtering 3D

filterSize = [3 3 3];
tic;
median3D = medfilt3(data3,filterSize);
timed = toc;

result = {};
result.data = median3D;
result.time = timed;

disp("3D median filter done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("median3D",datestr(now,formatOut),".mat")),'result');
clear median3D;
clear result;



%% CNNS

%% DNCNN
[dncnn, timed] = DnCNNdenoise3D(homePath,data3,0,1);

result = {};
result.data = dncnn;
result.time = timed;

disp("DNCNN done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("dncnn",datestr(now,formatOut),".mat")),'result');
clear dncnn;
clear result;


%% FFD
useGPU = 1;

[ffd,timed] = FFDdenoise3D(homePath,data3,useGPU);

result = {};
result.data = ffd;
result.time = timed;

disp("FFD done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("ffd",datestr(now,formatOut),".mat")),'result');
clear ffd;
clear result;



%% IRCNN
noiseImg = 0;
noiseModel = 10;
useGPU = 1;
[ircnn, timed] = IRCNNdenoise3D(homePath,data3,noiseImg,noiseModel,useGPU);

result = {};
result.data = ircnn;
result.time = timed;

disp("IRCNN done in "+timed+"s");



save(fullfile(homePath,"results\",strcat("ircnn",datestr(now,formatOut),".mat")),'result');
clear ircnn;
clear result;



%% DNCNN Matlab
[dncnnm,timed] = DnCNNMatlab3D(homePath,data3);

result = {};
result.data = dncnnm;
result.time = timed;

disp("DNCNN matlab done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("dncnnm",datestr(now,formatOut),".mat")),'result');
clear dncnnm;
clear result;

%% wavresnet denoise
useGPU = 1;
[wrn,timed] = WaveresnetDenoise3D(homePath,data3,useGPU);

result = {};
result.data = wrn;
result.time = timed;

disp("wavresnet done  in "+timed+"s");


save(fullfile(homePath,"results\",strcat("wrn",datestr(now,formatOut),".mat")),'result');
clear wrn;
clear result;

%% wavresnet RNN denoise
useGPU = 1;
[wrnrnn, timed] = WaveresnetDenoiseRNN3D(homePath,data3,useGPU);

result = {};
result.data = wrnrnn;
result.time = timed;

disp("wavresnet with RNN done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("wrnrnn",datestr(now,formatOut),".mat")),'result');
clear wrnrnn;
clear result;



%% AAPM challenge denoise
useGPU = 1;
[aapm,timed] = AAPMChallenge3D(homePath,data3,useGPU);

result = {};
result.data = aapm;
result.time = timed;

disp("aapm done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("aapm",datestr(now,formatOut),".mat")),'result');
clear aapm;
clear result;


%% mwcnn
Sigma = 15;
modelName = 'MWCNN_Haart_GDSigma';
displayResults = 0;

[mwcnn,timed] = mwcnnDenoise3D(path, data3, Sigma, modelName, displayResults);

result = {};
result.data = mwcnn;
result.time = timed;

disp("mwcnn done in "+timed+"s");


save(fullfile(homePath,"results\",strcat("mwcnn",datestr(now,formatOut),".mat")),'result');
clear mwcnn;


