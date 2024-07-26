function [a, b, x, y, indices] = compute_voronoi(xi, yi, x, y)
% Append the new vertices
x = [x xi];
y = [y yi];
if length(x) >= 3
    [a, b] = voronoi(x,y);
    [~, c] = size(a);
    indices = int32(0:2*c-1);
    a = a(:); % Flatten points
    b = b(:); % Flatten points
else
    a = 0;   b = 0; indices = int32(0);
end
end
