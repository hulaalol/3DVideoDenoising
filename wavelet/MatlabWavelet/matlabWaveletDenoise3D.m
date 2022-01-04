function [data3result,timed] = matlabWaveletDenoise3D(path, data3)
data3result = zeros(size(data3),'uint8');
tic;
parfor j = 1:size(data3,3)
        disp(j);
        label = data3(:,:,j);
        input = mat2gray(label);
        output = wdenoise2(input);
        output = uint8(255*output);
        data3result(:,:,j) = output;
end
timed = toc;
end

