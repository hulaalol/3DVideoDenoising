function extract2DImages(data3,imageAxis,outputFolder)

    if(imageAxis == 'x')
        for i=1:size(data3,2)
            imgData = permute(data3(:,i,:),[1 3 2]);
            imwrite(uint8(imgData),strcat(outputFolder,num2str(i),'.png'))
        end
    end
    
    if(imageAxis == 'y')
        for i=1:size(data3,1)
            imgData = permute(data3(i,:,:),[2 3 1]);
            imwrite(uint8(imgData),strcat(outputFolder,num2str(i),'.png'))
        end
    end
    
    if(imageAxis == 'z')
        for i=1:size(data3,3)
            imwrite(uint8(data3(:,:,i)),strcat(outputFolder,num2str(i),'.png'))
        end
    end
    
    
    
end