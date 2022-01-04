function createVideo(inputFolder,suffix,ext,outputFolder,outputfile)

    video = VideoWriter(strcat(fullfile(outputFolder,outputfile),'.avi')); %create the video object
    open(video); %open the file for writing
    
    numImages = size(dir([inputFolder '/*.' ext]),1);
    
    for i=1:numImages %where N is the number of images
      disp(strcat(num2str(i/numImages*100),' % done'));
      I = imread(strcat(inputFolder,num2str(i),suffix,'.png')); %read the next image
      writeVideo(video,I); %write the image to file
    end
    close(video); %close the file
  
end

