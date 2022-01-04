% Read_RAW_Header
% Returns the image header information and some extra information
% for any raw image file.
% Usage: stHeader = Read_RAW_Header(filename)
% Input
%   filename - RAW format file name
% Output
%   stHeader - header structure containing information on the data
% Header is 44 bytes.
% The header of an RAW file will look something like this:
%  stHeader.TotalVoxels:  Array size - total size of the array (not the whole file) - number of voxels.
%  stHeader.NumberOfDimensions:  Number of dimensions - 3 for a 3D image.
%  stHeader.x_size:  Size (number of voxels) in the X direction.
%  stHeader.y_size:  Size (number of voxels) in the Y direction.
%  stHeader.z_size:  Size (number of voxels) in the Z direction.
%  stHeader.XStart:  Position of the center of the first pixel in the X direction - it's 0.
%  stHeader.YStart:  Position of the center of the first pixel in the Y direction - it's 0.
%  stHeader.ZStart:  Position of the center of the first pixel in the Z direction - it's 0.
%  stHeader.XEnd:  Position of the center of the last pixel in the X direction - it's voxelWidth * (sizeX - 1).
%  stHeader.Yend:  Position of the center of the last pixel in the Y direction - it's voxelWidth * (sizeY - 1).
%  stHeader.ZEnd:  Position of the center of the last pixel in the Z direction - it's voxelWidth * (sizeZ - 1).
% Following the header in the data file, are the voxel values, but of course we do not return these in the header.
%
% I also add these fields to the returned header argument:
%	stHeader.HeaderSize = 44;
%	stHeader.BytesPerVoxel
%	stHeader.FileSizeInBytes
%	stHeader.DataSizeInBytes
%	stHeader.Endian
%	stHeader.EndianArg
%
% Example usage:
% fullFileName_RAW = fullfile(cd, 'SimulatedData_Distance.RAW')
% stHeader = Read_RAW_Header(fullFileName_RAW)
%
%------------------------------------------------------------------------------

function stHeader = Read_RAW_Header(fullFilename)
	% Check syntax.  Must have at least one input argument, the full filename. 
	if (nargin ~= 1)
		error('Usage: stHeader = Read_RAW_Header(fullFilename)');
	end 

	if (ischar(fullFilename)~=1)
		error('Requires a string filename as an argument.');
	end 

	% These aren't in the header specification for this type of file,
	% but other formats use it and it's a useful thing to add to the header.
	stHeader.Endian = 'Big';
	stHeader.EndianArg = 'ieee-be';

	% Open the file for reading.
	fileHandleID = fopen(fullFilename, 'rb', stHeader.EndianArg);
	if (fileHandleID == -1)
		error(['Error opening ', fullFilename, ' for input.']);
	end

	% Go to the beginning of the file.
	% Shouldn't be necessary, but can't hurt.
	fseek(fileHandleID, 0, 'bof');

	% Read the total number of voxels in the image.
	% Read bytes 1-4.
	stHeader.TotalVoxels = fread(fileHandleID, 1, '*int32');
	% Note: this may be unreliable, and can be zero!
	% Better to take the x, y, and z sizes and multiply them together.

	% The next 4 bytes are the number of dimensions - 2 or 3.
	% Read bytes 5-8.
	stHeader.NumberOfDimensions = fread(fileHandleID, 1, 'int32');

	% Read in the dimensions for the different directions.
	% They'll be in bytes 9-20.
	stHeader.x_size = fread(fileHandleID, 1, '*int32');
	stHeader.y_size = fread(fileHandleID, 1, '*int32');
	stHeader.z_size = fread(fileHandleID, 1, '*int32');
	stHeader.TotalVoxels = stHeader.x_size * stHeader.y_size * stHeader.z_size;

	% Read in the position of the center of the first pixel.
	% They'll be in bytes 21-32.
	stHeader.XStart = fread(fileHandleID, 1, '*float');
	stHeader.YStart = fread(fileHandleID, 1, '*float');
	stHeader.ZStart = fread(fileHandleID, 1, '*float');
	% Read in the position of the center of the last pixel.
	% They'll be in bytes 33-44.
	stHeader.XFieldOfView = fread(fileHandleID, 1, '*float');
	stHeader.YFieldOfView = fread(fileHandleID, 1, '*float');
	stHeader.ZFieldOfView = fread(fileHandleID, 1, '*float');
	% Note: the fields of view are based on (pixel center) - to - (pixel center).

	% Calculate the voxel width.
	stHeader.VoxelWidth = stHeader.XFieldOfView / single(stHeader.x_size - 1);

	% Assign some other useful information.
	% It's not in the header but may come in useful anyway.

	% Assign the bytes per voxel.
	%fileInfo = imfinfo(fullFilename);	% Note: doesn't work!
	% fileSizeInBytes = fileInfo.FileSize;
	% This works:
	fileInfo = dir(fullFilename); 
	% MATLAB returns the information in a structure with fields:
	%    name
	%    date
	%    bytes
	%    isdir
	%    datenum
	stHeader.HeaderSize = 44;
	fileSizeInBytes = fileInfo.bytes;
	dataSizeInBytes = double(fileSizeInBytes) - double(stHeader.HeaderSize);
	stHeader.BytesPerVoxel = int32(round(dataSizeInBytes / double(stHeader.TotalVoxels)));
	stHeader.FileSizeInBytes = fileSizeInBytes;
	stHeader.DataSizeInBytes = dataSizeInBytes;

	% Close the file.
	fclose(fileHandleID);	% Close the file.
