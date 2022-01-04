function [data3result, timed] = bm3dDenoise3D(path, data3, noiseVar)
data3result = zeros(size(data3),'uint8');
tic;
parfor j = 1:size(data3,3)
        label = im2double(data3(:,:,j));
        output = BM3D(label, sqrt(noiseVar));
        output = uint8(255*output);
        data3result(:,:,j) = uint8(output);
end
timed = toc;
end

