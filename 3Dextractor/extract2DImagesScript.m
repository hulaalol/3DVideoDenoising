%extract2DImages(data3,'y','A:\zuendkerze3\')

clear;
for j=1:2
    


data3 = loadQRM(j);
dims = {'x','y','z'};


d = size(data3);
d = d(1);

for k=1:d
   disp(k);
   slice = data3(k,:,:);
   slice(slice<=100) = 100;
   data3(k,:,:) = slice;
end

minVal = min(data3(:));
maxVal = max(data3(:));

rangeA = 0;
rangeB = 255;

data3Scaled = scaleData(data3, minVal, maxVal, rangeA, rangeB);

for i=1:3
extract2DImages(data3Scaled,dims{i},strcat('A:\PROJECTS\2019_11_AIP\data\qrmT100',num2str(j),'_',num2str(i),'\'));
end
        
    
end