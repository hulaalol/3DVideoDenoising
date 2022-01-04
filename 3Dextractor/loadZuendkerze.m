function [data3] = loadZuendkerze(datapath)

path = fullfile(datapath,'zuendkerze.vol');
params = readtable(fullfile(datapath,'zuendkerze.txt'));
datasize = strsplit(params(10,2).x32005482036{1});
x = str2num(datasize{1,1});
y = str2num(datasize{1,2});
z = str2num(datasize{1,3});
bpv = str2num(params(14,2).x32005482036{1}) / 8;
stInputParameters.XStart = 1;
stInputParameters.XEnd = x;
stInputParameters.YStart = 1;
stInputParameters.YEnd = y;
stInputParameters.ZStart = 1;
stInputParameters.ZEnd = z;
%stInputParameters.Subsample = 4;

data3 = Read_RAW_3DArrayVOL(path, stInputParameters, x, y, z, bpv);
end