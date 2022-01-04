function [data3result,timed] = gaussDenoise3D(path, data3, sigma)
data3result = zeros(size(data3),'uint8');
tic;
parfor j = 1:size(data3,3)
        output = imgaussfilt(data3(:,:,j),sigma);
        data3result(:,:,j) = uint8(output);
end
timed = toc;
end

