% author: Tyler Thompson
% date: 2/6/2019
% description: ECE4550 Matlab Assignment #1 Problem 2

clear;
close all;

n = 0:60;
f = 0.1;

f1 = sin((pi*n/3)*f);
f2 = n>=0; % unit step function

figure(1)

% part A plot
subplot(1,2,1)
stem(n,f1)
grid on
title('Part A: x(n)=sin((pi*n/3)*f)');
xlabel('n');
ylabel('x(n)');

% part B plot
subplot(1,2,2)
stem(n,f2)
grid on
title('Part B: x(n)=u(n)');
xlabel('n');
ylabel('x(n)');

% energy calculations
energy_f1 = sum(f1.^2);
fprintf('Part A: Energy of sin((pi*n/3)*f): %f\n', energy_f1);
energy_f2 = sum(f2.^2);
fprintf('Part B: Energy of u(n): %f\n', energy_f2);


% output
% Part A: Energy of sin((pi*n/3)*f): 30.000000
% Part B: Energy of u(n): 61.000000
