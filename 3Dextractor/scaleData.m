function output = scaleData(input,min,max,a,b)
output = ( ((b-a)*(input-min)) / (max-min)) + a;
return
end