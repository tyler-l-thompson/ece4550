% author: Tyler Thompson
% date: 3/20/2019
% description: ECE4550 Matlab Assignment #2 Problem 2

clear;
close all;

% X(z) = 1 / (1 - 1.5z^-1 + 0.5z^-2)

syms z
x = 1 / (1 - 1.5 * z^-1 + 0.5 * z^-2);

t = taylor(x, 'Order', 10);
fprintf("\nPower Series Expansion: \n");
pretty(t);
fprintf("\n");

z = 1:0.1:10;
figure
stem(subs(t))
grid on
xlabel('z')
ylabel('X(z)')
title('Power Series Approximation of X(z)')

% Output
% 
% Power Series Expansion: 
%      9        8        7       6       5       4      3      2
% 510 z  + 254 z  + 126 z  + 62 z  + 30 z  + 14 z  + 6 z  + 2 z

