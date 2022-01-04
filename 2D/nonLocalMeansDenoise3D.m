function [data3result, timed] = nonLocalMeansDenoise3D(path, data3, value)
data3result = zeros(size(data3),'uint8');
tic;
parfor j = 1:size(data3,3)
        if(~value)
            output = imnlmfilt(data3(:,:,j));
        else
            output = imnlmfilt(data3(:,:,j),value);
        end
        data3result(:,:,j) = uint8(output);
end
timed = toc;
end

