%% General setup

% main folder of the repository
homePath= 'A:\PROJECTS\2019_11_AIP';
addpath(genpath(homePath));

% setup matconvnet
vl_setupnn();

% test if matconvnet is installed and compiled
%vl_testnn('gpu',true)


%% Read .vol file and convert to 0-255 range .mat file

% .vol file information
volFilePath = 'A:\3d\data\vol\R000957-QRM_Daniel\QRM_Daniel_01';
volFileName = 'QRM_Daniel';
% dimension string 1339x1279x1371 dimensions from .vgi file
dims = 'x133912791371';

% output path for generated .mat file
outputPath = 'A:\3d\data\vol\';
outputFile = 'data3.mat';


%% option to skip preprocessing if volume was already preprocessed
useMATfile = true;
% set this to true to use already existing .mat volume file for denoising
% set to false to preprocess and denoise .vol file

% path of the existing mat file (e.g, data/qrm2.mat)
MATfilePath = strcat(outputPath,outputFile);


%% ROI:
% define start slice in the last dimension A (e.g. 1339x1279xA)
start= 175;
% number of slices to denoise
slices = 10;

% output in /results folder DateString Format
formatOut = 'yy-mm-dd_HH_MM_SS';


