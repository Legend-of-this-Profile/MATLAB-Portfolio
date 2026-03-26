%BARAN O'CONNOR  | created 3/25/2026 | Last Updated 3/26/2026
%the purpose of this document is to work as a logistics MAP which can input
%an initial x0, r, and n and extract the xn value

clear, clc
%Section for input parameters
x0 = input('insert initial condition (0<=x<=1) (x0):    ');%initial x
r = input('insert control parameter (r):    ');            %parameter
nfin = input('insert number of intervals (n):   ');        %final n
%

x = x0;       %initial x is the initial input x(0)

%for loop to calculate x, plot, and move to next.
for (n = 1:1:nfin) %from 1 to nfin runs
    
    x = r*x*(1-x); %Logistics MAP


    plot(n,x,'.','MarkerSize',30,Color='r')
    hold on
end
%

hold off %Stop adding to this plot


%plotting and plot settings
xlim([ 0 nfin + nfin*.05 ]); %extra little space on the right for asthetic
ylim([0 1]);                 %min and max of x
grid on                      %asthetic
xlabel('time intervals (n)')
ylabel('modelled value at interval (x)')
%


%Value output(final x value)
fprintf('x of %.4f is ',nfin)
fprintf('%.4f \n',x)