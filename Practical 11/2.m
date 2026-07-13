clc; clear

% Population range from 0 to 200 (in thousands)
P = linspace(0,200,500);

% Water demand function Q(P)
Q = 1020*sqrt(P).*(1 - 0.01*sqrt(P));

% Plot
plot(P,Q,'b','LineWidth',2);
grid on;
xlabel('Population P (thousands)');
ylabel('Water Demand Q (gallons/min)');
title('Water Demand During Fire vs Population');
