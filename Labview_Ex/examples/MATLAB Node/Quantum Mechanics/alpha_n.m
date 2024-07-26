function [plots, xs] = alpha_n(n, R)
% on the x-axis, we have alpha_n
x_end = 2*R;
x_step = x_end/10000;
x_start = x_step;
x = x_start:x_step:x_end;

% RHS plot
rhs.x = x;
rhs.y = real(sqrt(R.^2 - x.^2));

% LHS_1 plot
lhs_1.x = x;
lhs_1.y =  x.*tan(x);

% LHS_2 plot
lhs_2.x =x;
lhs_2.y = -x.*cot(x);

% all plots
plots(1) = lhs_1;
plots(2) = lhs_2;
plots(3) = rhs;

[xs, ys] = curve_intersection(x_start,x_step,x_end/2, lhs_1.y, rhs.y);
plots(4).x = xs;
plots(4).y = ys;

[xs2, ys2] = curve_intersection(x_start,x_step,x_end/2, lhs_2.y, rhs.y);
xs = [xs xs2];
ys = [ys ys2];
plots(4).x = xs;
plots(4).y = ys;

if length(xs) < n
zero_pad_len = n - length(xs);
xs = [xs zeros(1,zero_pad_len)];
end
end