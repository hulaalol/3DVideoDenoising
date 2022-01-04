data3 = preprocessVolData(load3D(volFilePath,volFileName,dims));
save(strcat(outputPath,outputFile),'data3','-v7.3');