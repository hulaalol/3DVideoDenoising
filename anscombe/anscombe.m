function output = anscombe(input)
output = sqrt(input + 3.0/8.0) * 2.0;
return
end

function output = inverse_anscombe(input)
output = ((1.0/4.0 * (input^2)) + (1.0/4.0 * sqrt(3.0/2.0)) * ((input^-1.0) - 11.0/8.0 * (input^-2.0)) + (5.0/8.0 * sqrt(3.0/2.0) * (input^-3) - 1.0 / 8.0));
return
end

function output = generalized_anscombe(x, mu, sigma, gain)
%gain = 1.0
x = gain * p + n;
y = gain*x + (gain^2)*3.0/8.0 + sigma^2 - gain*mu;
output = (2.0/gain)*sqrt(max(y, 0.0));
return 
end

function output = inverse_generalized_anscombe(x, mu, sigma, gain)
%gain = 1.0;
test = max(cat(2,x,1.0));
exact_inverse = ((test/2.0)^2.0) +  (1.0/4.0 * sqrt(3.0/2.0)*(test^-1.0)) - (11.0/8.0 * (test^-2.0)) + (5.0/8.0 * sqrt(3.0/2.0) * (test^-3.0)) - (1.0/8.0 - sigma^2);
exact_inverse = max(cat(2,exact_inverse,0.0))
exact_inverse = exact_inverse * gain;
exact_inverse = exact_inverse + mu;
exact_inverse(exact_inverse ~= exact_inverse) = 0.0
output = exact_inverse;
return
end








