function show2DImage(data3,imageAxis,slice)

    if(imageAxis == 'x')
            imgData = permute(data3(:,slice,:),[1 3 2]);
            imshow(rescale(imgData))
    end
    
    if(imageAxis == 'y')
            imgData = permute(data3(slice,:,:),[2 3 1]);
            imshow(rescale(imgData))
    end
    
    if(imageAxis == 'z')
            imshow(rescale(data3(:,:,slice)))
    end
   
end