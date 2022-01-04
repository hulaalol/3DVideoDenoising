%  Read_RAW_Slice
%  Reads one slice from a RAW file from disk.
%
%  [oneSlice, stHeader] = Read_RAW_Slice(fullFileName, sliceNumber) 
%  or, alternate usage:
%  [oneSlice, stHeader] = Read_RAW_Slice(fullFileName, stInputParameters) 
%  reads the specified slice from data in 'fullFileName' and 
%  returns the slice data as a 2D array, and the header as a structure stHeader.
%  This method of calling allows for cropping and subsampling.
%
%======== EXAMPLE USAGES =====================================
%  Example #1 usage: Simply read a slice.  No cropping or subsampling.
%	Note that you can pass in just a single number for the second argument and it
%	will be the slice number.  The Subsampling would then be 1.  For example:
%	fullFileName = 'SimulatedData_Distance8Bit.RAW';
%	[oneSlice, stHeader] = Read_RAW_Slice(fullFileName, 10);
%	imshow(oneSlice, []);
%
%  Example #2 usage: Read a slice with subsampling in the x, y, and z directions.
%	Create a MATLAB structure dynamically to hold the input parameters.
%	Use ZStart for the slice number.  You don't need to define any other structure members.
%	stInputParameters.ZStart = 60;
%	stInputParameters.Subsample = 4;  % Same for all 3 directions.
%	fullFileName = 'SimulatedData_Distance8Bit.RAW';
%	[oneSlice, stHeader] = Read_RAW_Slice(fullFileName, stInputParameters);
%	imshow(oneSlice, []);
%
%  Example #3 usage: Read a slice and crop and subsample it in the x, y, and z directions.
%	Create a MATLAB structure dynamically to hold the input parameters.
%	stInputParameters.XStart = 200;
%	stInputParameters.YStart = 1200;
%	stInputParameters.XEnd = 400;
%	stInputParameters.YEnd = 1600;
%	Use ZStart for the slice number.  You don't need to define any other structure members.
%	stInputParameters.ZStart = 70;
%	stInputParameters.Subsample = 4;  % Same for all 3 directions.
%	fullFileName = 'SimulatedData_Distance8Bit.RAW';
%	[oneSlice, stHeader] = Read_RAW_Slice(fullFileName, stInputParameters);
%	imshow(oneSlice, []);
%=============================================================
%
%--------------------------------------------------------------------------------------------

function [oneSlice, stHeader] = Read_RAW_Slice(fullFileName, stInputParameters)

	% Check syntax.  Must have two arguments.
	if (nargin ~= 2)
		error('Usage: [image2D, stHeader] = Read_RAW_Slice(fullFileName, stInputParameters)');
	end 
	if (ischar(fullFileName) ~= 1)
		error('Requires a string filename as an argument.');
	end 
	if ~exist(fullFileName, 'file')
		error('Error: file passed in to Read_RAW_Slice\n%s\ndoes not exist.', fullFileName);
	end

	% Read in header and get 3D image array dimensions.
	stHeader = Read_RAW_Header(fullFileName);
	% Note: fread() requires that x_size and y_size be doubles.
	x_size = double(stHeader.x_size);
	y_size = double(stHeader.y_size);
	z_size = double(stHeader.z_size);

	% Determine the parameters that they passed in.
	if isa(stInputParameters, 'double') || isa(stInputParameters, 'integer')
		% They didn't pass in a structure - they just passed in a single number (scalar).
		% Interpret this number as the slice number.
		sliceNumber = int32(stInputParameters);
		% For the rest, just take the entire slice.
		xStart = int32(1);
		yStart = int32(1);
		xEnd = int32(x_size);
		yEnd = int32(y_size);
		Subsampling = int32(1);
	else
		% They passed in a structure.  Make sure they passed in valid numbers.
		% Assign defaults to any fields in stInputParameters that they didn't set.
		stValidParameters = ValidateInputParameters(stInputParameters, x_size, y_size, z_size);
		sliceNumber = int32(stValidParameters.ZStart);
		xStart = int32(stValidParameters.XStart);
		yStart = int32(stValidParameters.YStart);
		xEnd = int32(stValidParameters.XEnd);
		yEnd = int32(stValidParameters.YEnd);
		Subsampling = int32(stValidParameters.Subsample);
	end

	% Make sure they asked for a slice that is within range.
	if (sliceNumber > z_size)
		% Error and exit if they didn't.
		error('Slice number must be within the range 1 to %d.\nYou asked for slice %d.', z_size, sliceNumber);
	end

	% Open file for reading.
	fileHandle = fopen(fullFileName, 'rb', stHeader.EndianArg);
	if (fileHandle == -1)
		error(['Error opening ', fullFileName, ' for input.']);
	end

	% Skip past header of stHeader.HeaderSize bytes.
	bytesToSkip = int32(stHeader.HeaderSize);
	fseek(fileHandle, bytesToSkip, 'bof');

	% Now, additionally, skip past (sliceNumber - 1) slices
	% so that we end up at the beginning byte of the slice that we want.
	bytesToSkip = bytesToSkip + int32(x_size * y_size * stHeader.BytesPerVoxel * (sliceNumber - 1));
	fseek(fileHandle, bytesToSkip, 'bof');

	% Read in image2D image data
	% Get original, full-sized 2-D slice.
	% Note: fread() requires that x_size and y_size be doubles.
	% Note: fread() will return a 2D array if you pass in a 2D array for the number of bytes, as in [x_size y_size].
	if stHeader.BytesPerVoxel == 1
		oneSlice = fread(fileHandle, [x_size y_size], '*uint8');
	elseif stHeader.BytesPerVoxel == 2
		oneSlice = fread(fileHandle, [x_size y_size], '*int16'); % It will be a 2D array after this.
	else
		error('Unsupported BytesPerVoxel %d', stHeader.BytesPerVoxel);
	end

	% Close the file.
	fclose(fileHandle);

	% Subsample and/or crop it, if requested.
	if Subsampling ~= 1 || xStart ~= 1 || yStart ~= 1 || xEnd ~= x_size || yEnd ~= y_size
		oneSlice = oneSlice(xStart:Subsampling:xEnd, yStart:Subsampling:yEnd);
	end

	return;	% from Read_RAW_Slice()
