% author: Tyler Thompson
% date: 3/20/2019
% description: ECE4550 Matlab Assignment #2 Problem 1 Part A

clear;
close all;

% X(z) = (1 + z^-1)/(1 - z^-1 + 0.5z^-2)
b = [1 1];
a = [1 -1 0.5];
[r,p,k] = residue(b,a);

fprintf("\nPoles:\n");
for n = 1:length(p)
    fprintf("%g%+gj\n", real(p(n)), imag(p(n)));
end

fprintf("\nResidues: \n");
for n = 1:length(r)
    fprintf("%g%+gj\n", real(r(n)), imag(r(n)));
end


fprintf("\nX(z) = ");
for n = 1:length(p)
    fprintf("(%g%+gj)/(z-%g%+gj)", real(r(n)), imag(r(n)), real(p(n)), imag(p(n)));
    if n == length(p)
        fprintf("\n");
    else
        fprintf(" + ");
    end
end


zplane(b,a)
hold on
plot(p, '^r')
title("Part A Poles and Zeros")
hold off


% Output
% 
% Poles:
% 0.5+0.5j
% 0.5-0.5j
% 
% Residues: 
% 0.5-1.5j
% 0.5+1.5j
% 
% X(z) = (0.5-1.5j)/(z-0.5+0.5j) + (0.5+1.5j)/(z-0.5-0.5j)
