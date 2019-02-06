% author: Tyler Thompson
% date: 2/6/2019
% description: ECE4550 Matlab Assignment #1 Problem 3

clear;
close all;

n = 0:100;

f1 = n.*ones(1,length(n));
f2 = cumsum(f1);

figure(1)
subplot(1,2,1)
stem(n,f1)
grid on
title('x(n)=n*u(n)');
xlabel('n');
ylabel('x(n)');

subplot(1,2,2)
stem(n, f2)
grid on
title('y(n)=sumation x(k) from k=-infinity to n');
xlabel('n');
ylabel('y(n)');
