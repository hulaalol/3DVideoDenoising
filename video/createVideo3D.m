function createVideo3D(data3,outputFolder,outputfile,fps)

    video = VideoWriter(strcat(fullfile(outputFolder,outputfile),'.avi')); %create the video object
    video.FrameRate = fps;
    open(video); %open the file for writing
    
    numImages = size(data3,3);
    
    for i=1:numImages %where N is the number of images
      disp(strcat(num2str(i/numImages*100),' % done'));
      I = data3(:,:,i); %read the next image
      writeVideo(video,I); %write the image to file
    end
    close(video); %close the file
  
end
