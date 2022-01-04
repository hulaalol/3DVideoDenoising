[file,path] = uigetfile('*.mat','Select denoising results');
load(fullfile(path,file));
[C,matches] = strsplit(file,'.mat');
createVideo3D(result.data,path,C{1})