% author: Tyler Thompson
% date: 4/10/2019
% description: ECE4550 Matlab Assignment #3 Problem 3 part 8

clear;
close all;

x = [20 18 22 17 23 19 21 17 18 14 16 12 14 11 12 9 10 7 8 4 7];

b = [0.5 -0.5];
a = [1 0];

[H,z] = freqz(b,a);
[h,n] = impz(b,a);

% Part 1 - Impluse Response
figure(1)
impz(b,a,[-1 0 1 2 3])
title('Impulse Response')

% Part 2 - Filter output
y = conv(x,h); % linear convolution
x(length(x)+1) = 0;

figure(2)
subplot(2,1,1)
stem(0:21,x)
title('Input')
xlabel('n')
ylabel('x(n)')
grid on

subplot(2,1,2)
stem(0:21,y,'Color','red')
title('Output')
xlabel('n')
ylabel('y(n)')
grid on

% Part 3A - Frequency Response using freqz
figure(3)
freqz(b,a,'whole')
title('Frequency Response (freqz)')

% Part 3B - Frequency Response using fft
figure(4)
h(2) = -h(2); % fix negative value fft puts in for some reason
N = 256; % number of samples
X1 = fftshift(fft(h,N)); % take fft and shift it to align left side with 0
w = 2*pi * (0:(N-1)) / N; % convert x axis values to radians
w2 = fftshift(w); % shift to align with fft
w3 = unwrap(w2 - pi); % shift to align with 0
subplot(2,1,1)
plot(w3/pi,mag2db(abs(X1)))
title('Frequency Response (fft)')
ylabel('Magnitude in dB')
xlabel('Radians / Sample')
grid on

subplot(2,1,2)
plot(w3/pi,rad2deg(angle(X1)))
title('Phase')
ylabel('Phase in Degrees')
xlabel('Radians / Sample')
grid on

% Poles and Zeros plot
figure(5)
zplane(b,a)
title('Poles and Zeros')

