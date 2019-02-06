% author: Tyler Thompson
% date: 2/6/2019
% description: ECE4550 Matlab Assignment #1 Problem 1

clear;
close all;

n = 0:60;
Fsa = 40;
Fsb = 100;

ta = n/Fsa;
tb = n/Fsb;

f1a = cos(20*pi*ta);
f2a = cos(100*pi*ta);
f1b = cos(20*pi*tb);
f2b = cos(100*pi*tb);

figure(1)

% part A plots
subplot(2,2,1)
stem(n,f1a)
grid on
title('Part A: cos(20*pi*t), Fs=40Hz');
xlabel('n');
ylabel('x1(n)');

subplot(2,2,2)
stem(n,f2a)
grid on
title('Part A: cos(100*pi*t), Fs=40Hz');
xlabel('n');
ylabel('x2(n)');

% part B plots
subplot(2,2,3)
stem(n,f1b)
grid on
title('Part B: cos(20*pi*t), Fs=100Hz');
xlabel('n');
ylabel('x1(n)');

subplot(2,2,4)
stem(n,f2b)
grid on
title('Part B: cos(100*pi*t), Fs=100Hz');
xlabel('n');
ylabel('x2(n)')
