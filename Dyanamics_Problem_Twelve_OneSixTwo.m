%BARAN O'CONNOR | created: ? | Updated:

%The purpose of this code was to demonstrate the ability to solve a
%dynamics problem in cylindrical coordinates. The problem here is problem
%12-162 from 'Engineering Mechanics DYNAMICS 15th Edition' by R.C. Hibbler

% clear screen, variables, and figures
clc; clear all; close all;

%symbolically represent t
syms t;

%Insert functions in respect to t
theta=4*t; %[rad]
r=2*sin(8*t); % [m]



%Take derivatives
rdot=diff(r,t);
rdbledot=diff(rdot,t);

thetadot=diff(theta,t);
thetadbldot=diff(thetadot,t);

%Insert t=1 sec
r = subs(r,t,1);
rdot = subs(rdot,t,1);
rddot = subs(rdbledot,t,1);

theta = subs(theta,t,1);
thetadot = subs(thetadot,t,1);
thetaddot = subs(thetadbldot,t,1);


%Insert into formulas
Vr = rdot;
Vn = r*thetadot;

Ar = (rddot - r*thetadot^2);
An = (r*thetaddot +2*rdot*thetadot);

%Print results
fprintf('velocity is %.3f [ur] + ', Vr); fprintf('%.3f [un] \n\n', Vn);
fprintf('acceleration is %.3f [ur] + ', Ar); fprintf('%.3f [un]', An);
