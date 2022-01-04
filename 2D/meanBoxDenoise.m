%Mean/ Box filtering
%https://de.mathworks.com/help/images/ref/imboxfilt.html

function meanBoxDenoise(path, imageSet, filterSize)

folderTest    = 'data';
saveResult = true;
folderResultCur       =  fullfile(path, ['results\meanBox_',imageSet,'_',datestr(now,'mm_dd_HH-MM-SS')]);

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
        %input = uint8(label);

        %J = medfilt2(I) performs median filtering of the image I in two dimensions. Each output pixel contains the median value in a 3-by-3 neighborhood around the corresponding pixel in the input image.
        %You optionally can compute the normalized cross-correlation using a GPU (requires Parallel Computing Toolbox?).
        
        output = imboxfilt(input,filterSize);

        if saveResult
                %c = vertcat(uint8(input),uint8(output));
                c = vertcat(input,output);
                imwrite(c,fullfile(folderResultCur, [filePaths(j).name(1:end-4), '_compare_mean', extCur]));
                imwrite(uint8(output),fullfile(folderResultCur, [filePaths(j).name]));
                %montage({input,output})
        end

end

end

