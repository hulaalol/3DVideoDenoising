function [data3result, timed] = meanBoxDenoise3D(path, data3, filterSize)
data3result = zeros(size(data3),'uint8');
tic;
parfor j = 1:size(data3,3)
        output = imboxfilt(data3(:,:,j),filterSize);
        data3result(:,:,j) = uint8(output);
end
timed = toc;
end

