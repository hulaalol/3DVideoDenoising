function [data3result, timed] = guidedImageDenoise3D(path, data3)
data3result = zeros(size(data3),'uint8');
tic;
parfor j = 1:size(data3,3)
        output = imguidedfilter(data3(:,:,j));
        data3result(:,:,j) = uint8(output);
end
timed = toc;
end

