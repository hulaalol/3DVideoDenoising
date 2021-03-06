%% CONFIG
%sliceStart= 203;
%sliceEnd = 283;
%% SCRIPT

savePath = "A:\PROJECTS\2019_11_AIP\validation\plots";

slice = 109;
rotAngle = -53;
[files,path] = uigetfile('*.mat','Select denoising results','MultiSelect', 'on');

for k=1:size(files,2)
    
    data = load(fullfile(path,files{k}));
    data = data.result;

    img = data.data(:,:,slice);
    img = imrotate(img,rotAngle);
    %imshow(img)
    
    %% chip
    % 621/712 to 1197/1280
    chip = img(712:1280, 621:1197);
    
    %% L
    % 855/761 to 951/858
    l = img(761:858, 855:951);
    
    %% QRM
    % 919/1152 to 998/1230
    qrm = img(1152:1230, 919:998);
    

    %% STAR
    % 802/1146 to 898/1241
    star = img(1146:1241, 802:898);

    %% BOX
    % 785/879 to 1030/1122
    boxx = img(879:1122, 785:1030);
    
    [C,matches] = strsplit(files{k},'\d*-\d*','DelimiterType','RegularExpression')
    
    if(contains(C{1},".mat"))
       idx = strfind(C{1},".mat");
       C{1} =  C{1}(1:idx-1);
    end
    
    imwrite(l,fullfile(savePath,"l",strcat("l_",C{1},".png")));
    imwrite(qrm,fullfile(savePath,"qrm",strcat("qrm_",C{1},".png")));
    imwrite(star,fullfile(savePath,"star",strcat("star_",C{1},".png")));
    imwrite(boxx,fullfile(savePath,"boxx",strcat("boxx_",C{1},".png")));
    imwrite(chip,fullfile(savePath,"chip",strcat("chip_",C{1},".png")));
    
end







