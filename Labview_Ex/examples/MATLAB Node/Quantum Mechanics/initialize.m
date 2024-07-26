function [R, L, hbar, V0, m] = initialize(V0, m, L)
L = L * 10^-9;

% hbar
hbar = 1.055*10^-34;

% V0 in J
V0 = V0 * 1.602 * 10^-19;

% R
R = real(sqrt(m*V0/2))*L/hbar;
end