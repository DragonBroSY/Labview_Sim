function [E, psi, p] = calculate_wave_function(alpha_n, n, initialized_wave_func_args)
% unpack initialized_wave_func_args struct:
L = initialized_wave_func_args.L;
hbar = initialized_wave_func_args.hbar;
V0 = initialized_wave_func_args.V0;
m = initialized_wave_func_args.m;

% Get alpha for quantum number n
alpha = alpha_n(n);

% Get k1 and k2 from alpha_n
k2 = 2*alpha/L;
k1 = real(sqrt(((2*m*V0)/(hbar*hbar)) - k2*k2));

% Get Energy for quantum number n
E = (hbar.^2*k2.^2)/(2*m*1.602*10^-19);

% Get psi3 wavefunction constant
D = cos(L*k2/2) * exp(L*k1/2);

% calc wave functions
x1 = -L:L/10000:-L/2;
psi1 = D*exp(k1*x1);
x2 = -L/2:L/10000:L/2;
psi2 = cos(k2*x2);
x3 = L/2:L/10000:L;
psi3 = D*exp(-k1*x3);

% set x-axis of plots
x = [x1 x2 x3];
psi.x = x;
p.x = x;

% normalize y-axis
y = [psi1 psi2 psi3];
y_n = real(sqrt(sum(y.*y)));
y = y / y_n;

% set y-axis of plots
psi.y = y;
p.y = abs(y).^2;
end