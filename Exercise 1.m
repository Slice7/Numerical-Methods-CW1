%%
clear all, close all, clc, format long, format compact
fs=10;
set(0,'defaulttextfontsize',fs);
set(0,'defaultaxesfontsize',fs);
tol=1e-10;
nmax=100;
%%  
% *Exercise 1*
% 
% (a)

% Defining f
f=@(x)x/2-sin(x)+pi/6-sqrt(3)/2;

% Plotting f between -pi/2 and pi
x=linspace(-pi/2,pi,101);
plot(x,f(x),'LineWidth',2)
grid on
xlabel('x')
ylabel('f(x)')
title('f(x) between -pi/2 and pi')

% Bisection method

% A suitable interval would be [0, pi] as used below.
[zero,res,niter,itersb]=bisection(f,0,pi,tol,nmax)

%%
% (b)

% Defining the derivative of f
df=@(x)1/2-cos(x);

% Newton's method for alpha
[zero_a,res_a,niter_a,itersn_a]=newton(f,df,pi,tol,nmax)

% Newton's method for beta
[zero_b,res_b,niter_b,itersn_b]=newton(f,df,-pi/2,tol,nmax)

% Alpha has 5 iterations and beta has 27.
% This is because by theorem 4.4.1, as f'(alpha) is not 0, we have quadratic convergence.
% But as f'(beta)=0, then by remark 4.4.2, we only have linear convergence.
%%
% (c)

% Fixed point iteration corresponding to modified Newton's method for beta
phi=@(x)x-2*f(x)/df(x);
[fixp_b,res_b,niter_b,itersfp_b]=fixpoint(phi,-pi/2,tol,nmax)

% As we have recovered quadratic convergence, we only need four iterations.
