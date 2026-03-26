%BARAN O'CONNOR | CREATED 2/23/2026 |

clear, clc

%The purpose of this document is to animate a 2D robot arm on a plot.
%operators and veriables can be changed at will to observe their effects on
%the arm

for t=linspace(0,2*pi,100) %creates 100 even spaces between 0 and 2pi
    theta1 = cos(t); %without ay operators, is steadily rotates
    theta2 = sin(t); %with the sin operator, it oscillates
    %theta2 = cos(2*t); %faster oscillation
    %theta2 = t/2; %slower oscillation

    L1 = 3;
    L2 =  2;

    %Joint 1
    x1 = L1*cosd(theta1);
    y1 = L1*sin(theta1);

    %Joint 2
    x2 = x1 + L2*cos(theta1+theta2);
    y2 = y1 + L2*sin(theta1+theta2);


    %plotting
    plot([0,x1,x2],[0,y1,y2])
    axis equal
    xlim([-7 7])
    ylim([-7 7])

    drawnow
end