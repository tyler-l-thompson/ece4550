% author: Tyler Thompson
% date: 4/10/2019
% description: ECE4550 Matlab Assignment #3 Problem 2

clear;
close all;

% coefficents of transfer function
b = [0.15 0 -0.15];
a = [0.7 -0.5 1];

% print the frequency response equation to the console
fprintf("H(w) = [");
for i = 1:length(b)
   if b(i) ~= 0
       if i == 1
           fprintf("%g", b(i));
       elseif i == 2
           fprintf("%ge^(-jw)", b(i));
       else
           fprintf("%ge^(-jw%g)", b(i), i-1); 
       end
   
       if i == length(b)
           fprintf("]/[");
       else
           fprintf(" + ");
       end
   end
end
for i = 1:length(a)
   if a(i) ~= 0
       if i == 1
           fprintf("%g", a(i));
       elseif i == 2
           fprintf("%ge^(-jw)", a(i));
       else
           fprintf("%ge^(-jw%g)", a(i), i-1); 
       end
   
       if i == length(a)
           fprintf("]\n");
       else
           fprintf(" + ");
       end
   end
end

% plot frequency response magnitude and phase
figure(1)
freqz(b,a,'whole')
title('Frequency Response')

% plot poles and zeros
figure(2)
zplane(b,a)

% Output
% H(w) = [0.15 + -0.15e^(-jw2)]/[0.7 + -0.5e^(-jw) + 1e^(-jw2)]
