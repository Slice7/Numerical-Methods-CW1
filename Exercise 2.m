%%
clear all, close all, clc, format long, format compact
fs=10;
set(0,'defaulttextfontsize',fs);
set(0,'defaultaxesfontsize',fs);
tol=1e-10;
nmax=100;
%%
% *Exercise 2*
%
% (a)

% Defining f and its derivative
f=@(x)x+exp(-20.*x.^2).*cos(x);
df=@(x)1-40.*x.*exp(-20.*x.^2).*cos(x)-exp(-20.*x.^2).*sin(x);

% Newton's method
[zero,res,niter,itersn]=newton(f,df,0,tol,nmax)

% We have an oscillation between ~-1 and ~0.
%%
% (b)

% Plotting f between -1 and 1
x=linspace(-1,1,101);
plot(x,f(x),'LineWidth',2)
grid on
xlabel('x')
ylabel('f(x)')
title('f(x) between -1 and 1')

% We have an oscillation because the tangent at 0 meets the x-axis at -1, and the tangent at -1 meets the x-axis at ~0. As the function is continuous, the tangent at ~0 will always meet the tangent at ~-1 and vice versa, hence Newton's method will oscillate between ~0 and ~-1.
%%
% (c)

% 5 iterations of bisection
nmax=5;
[zero,res,niter,itersb]=bisection(f,-1,1,tol,nmax)

% Newton's method (no need to change nmax as we will need less than 5 iterations)
[zero,res,niter,itersn]=newton(f,df,zero,tol,nmax)

% We now have convergence with only four iterations.
