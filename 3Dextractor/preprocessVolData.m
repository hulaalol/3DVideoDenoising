function data3Scaled = preprocessVolData(data3)

dims = {'x','y','z'};
d = size(data3);
d = d(1);

for k=1:d
   slice = data3(k,:,:);
   slice(slice<=100) = 100;
   data3(k,:,:) = slice;
end

minVal = min(data3(:));
maxVal = max(data3(:));

rangeA = 0;
rangeB = 255;

data3Scaled = uint8(scaleData(data3, minVal, maxVal, rangeA, rangeB));

end