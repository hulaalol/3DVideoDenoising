%=========================================================================
% Make sure the parameters they passed in are in range of 1 to the max dimension in the direction.
% The fields of structure stInputParameters that are checked are:
% XStart, XEnd, YStart, YEnd, ZStart, ZEnd, Subsampling.
% Returns valid parameters in return structure stValidParameters
% The input structure stInputParameters is not changed.
%------------------------------------------------------------------------------

function stValidParameters = ValidateInputParameters(stInputParameters, x_size, y_size, z_size)
	% They passed in a structure.  Extract out what values we can.

	% Get the starting and stopping columns (X direction).
	if isfield(stInputParameters, 'XStart')
		% They initialized stInputParameters with a field called "XStart"
		% Take the value they passed in, but limit it to the proper range.
		% If XStart is outside the range of 1 to x_size (no matter whether above or below), set it equal to 1.
		stValidParameters.XStart = LimitToRange(stInputParameters.XStart, 1, x_size, 'XStart', 'min');
	else
		stValidParameters.XStart = 1;	% Assign the default value because they didn't set this field.
	end
	if isfield(stInputParameters, 'XEnd')
		% They initialized stInputParameters with a field called "XEnd"
		% Take the value they passed in, but limit it to the proper range.
		% If XStart is outside the range of 1 to x_size (no matter whether above or below), set it equal to x_size.
		stValidParameters.XEnd = LimitToRange(stInputParameters.XEnd, 1, x_size, 'XEnd', 'max');
	else
		stValidParameters.XEnd = x_size;	% Assign the default value because they didn't set this field.
	end

	% Get the starting and stopping rows (Y direction).
	if isfield(stInputParameters, 'YStart')
		% They initialized stInputParameters with a field called "YStart"
		% Take the value they passed in, but limit it to the proper range.
		% If YStart is outside the range of 1 to y_size (no matter whether above or below), set it equal to 1.
		stValidParameters.YStart = LimitToRange(stInputParameters.YStart, 1, y_size, 'YStart', 'min');
	else
		stValidParameters.YStart = 1;	% Assign the default value because they didn't set this field.
	end
	if isfield(stInputParameters, 'YEnd')
		% They initialized stInputParameters with a field called "YEnd"
		% Take the value they passed in, but limit it to the proper range.
		% If YStart is outside the range of 1 to y_size (no matter whether above or below), set it equal to y_size.
		stValidParameters.YEnd = LimitToRange(stInputParameters.YEnd, 1, y_size, 'YEnd', 'max');
	else
		stValidParameters.YEnd = y_size;	% Assign the default value because they didn't set this field.
	end

	% Get the starting and stopping slice numbers (Z direction).
	if isfield(stInputParameters, 'ZStart')
		% They initialized stInputParameters with a field called "ZStart"
		% Take the value they passed in, but limit it to the proper range.
		% If ZStart is outside the range of 1 to z_size (no matter whether above or below), set it equal to 1.
		stValidParameters.ZStart = int32(LimitToRange(stInputParameters.ZStart, 1, z_size, 'ZStart', 'min'));
	else
		stValidParameters.ZStart = int32(1);	% Assign the default value because they didn't set this field.
	end
	if isfield(stInputParameters, 'ZEnd')
		% They initialized stInputParameters with a field called "ZEnd"
		% Take the value they passed in, but limit it to the proper range.
		% If ZEnd is outside the range of 1 to z_size (no matter whether above or below), set it equal to z_size.
		stValidParameters.ZEnd = LimitToRange(stInputParameters.ZEnd, 1, z_size, 'ZEnd', 'max');
	else
		stValidParameters.ZEnd = z_size;	% Assign the default value because they didn't set this field.
	end

	% Make sure the start values are always less than or equal to the end values.
	stValidParameters = SortValues(stValidParameters);
	
	% Get the Subsampling.
	smallestDimension =  min([x_size y_size z_size]);  % min must be all lower case.
	if isfield(stInputParameters, 'Subsample')
		% Take the value they passed in, but limit it to the proper range.
		if smallestDimension == 1
			% Just a flat image, not a 3D image.
			stValidParameters.Subsample = LimitToRange(stInputParameters.Subsample, 1, 1, 'Subsample', 'clip');
		else
			% A 3D image.
			stValidParameters.Subsample = LimitToRange(stInputParameters.Subsample, 1, smallestDimension - 1, 'Subsample', 'clip');
		end
	else
		stValidParameters.Subsample = 1;	% Assign the default value because they didn't set this field.
	end

	return; % ValidateInputParameters


%=========================================================================
% Make sure that inputValue is in range [lowestAllowableValue, highestAllowableValue] (inclusive).
% Returns outputValue that is guaranteed to be in that range.
% If it's outside the range, no matter whether it is high or low, it will be reset according to the "action" argument:
%		action = 'min'  outputValue well be set equal to lowestAllowableValue
%		action = 'max'  outputValue well be set equal to highestAllowableValue
%		action = 'clip'  outputValue well be set equal to lowestAllowableValue if below the range
%				and outputValue well be set equal to highestAllowableValue if above the range.
% inputValue is not changed.
% Tell them if it was out of range but do not throw an error (which would stop the program) - 
% just correct it according to the "action" argument.
function outputValue = LimitToRange(inputValue, lowestAllowableValue, highestAllowableValue, name, action)
	% For starters, assume it's OK.
	outputValue = inputValue;
	if outputValue < lowestAllowableValue
		% Decide if they want to limit the value or set to a specific value.
		if strcmpi(action, 'min')
			newValue = lowestAllowableValue;
		elseif strcmpi(action, 'max')
			newValue = highestAllowableValue;
		else % 'clip' to the nearest value.
			newValue = lowestAllowableValue;
		end
		% Tell them in the command window that it was outside the allowable range.
% 		message = sprintf('%s has a value of %f which is below the minimum allowable value of %f.\nIt will be set to %f.', name, inputValue, lowestAllowableValue, newValue);
% 		disp(message);
		% Clip it to the minimum allowable value.
		outputValue = newValue;
	end
	if outputValue > highestAllowableValue
		% Decide if they want to limit the value or set to a specific value.
		if strcmpi(action, 'min')
			newValue = lowestAllowableValue;
		elseif strcmpi(action, 'max')
			newValue = highestAllowableValue;
		else % 'clip' to the nearest value.
			newValue = highestAllowableValue;
		end
		% Tell them in the command window that it was outside the allowable range.
% 		message = sprintf('%s has a value of %f which is above the maximum allowable value of %f.\nIt will be set to %f.', name, inputValue, highestAllowableValue, newValue);
% 		disp(message);
		% Clip it to the maximum allowable value.
		outputValue = newValue;
	end
	
%====================================================================
% Make sure the start values are always less than the end values.
function stSortedInputParameters = SortValues(stInputParameters)
	stSortedInputParameters = stInputParameters;
	if stSortedInputParameters.XStart > stSortedInputParameters.XEnd
		% They're reversed, so switch them.
		stSortedInputParameters.XStart = stInputParameters.XEnd;
		stSortedInputParameters.XEnd = stInputParameters.XStart;
	end
	if stSortedInputParameters.YStart > stSortedInputParameters.YEnd
		% They're reversed, so switch them.
		stSortedInputParameters.YStart = stInputParameters.YEnd;
		stSortedInputParameters.YEnd = stInputParameters.YStart;
	end
	if stSortedInputParameters.ZStart > stSortedInputParameters.ZEnd
		% They're reversed, so switch them.
		stSortedInputParameters.ZStart = stInputParameters.ZEnd;
		stSortedInputParameters.ZEnd = stInputParameters.ZStart;
	end
	return;
