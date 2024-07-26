function [A] = random_height_map(amp, len)
A = amp * rand(len+1);
end