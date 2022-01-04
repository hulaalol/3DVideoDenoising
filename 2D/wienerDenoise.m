%Filter the image with a Gaussian filter with standard deviation of 2.
%https://de.mathworks.com/help/images/ref/wiener2.html

function wienerDenoise(path, imageSet)

folderTest    = 'data';
saveResult = true;
folderResultCur       =  fullfile(path, ['results\wiener_',imageSet,'_',datestr(now,'mm_dd_HH-MM-SS')]);

if ~exist(folderResultCur,'file')
    mkdir(folderResultCur);
end

%%% read images
ext         =  {'*.jpg','*.png','*.bmp'};
filePaths   =  [];
folderTestCur = fullfile(path, folderTest,imageSet);
for i = 1 : length(ext)
    filePaths = cat(1,filePaths, dir(fullfile(folderTestCur,ext{i})));
end

parfor j = 1:length(filePaths)
        
        %%% read images
        label = imread(fullfile(folderTestCur,filePaths(j).name));
        [~,~,extCur] = fileparts(filePaths(j).name);
        input = label;

        output = wiener2(input,[5 5]);

        
        if saveResult
                c = vertcat(input,output);
                imwrite(c,fullfile(folderResultCur, [filePaths(j).name(1:end-4), '_compare_wiener', extCur]));
                imwrite(uint8(output),fullfile(folderResultCur, [filePaths(j).name]));
        end
end
end

