clc; clear

% Time vector from 0 to 4 seconds
t = linspace(0,4,400);

% Displacement function x(t)
x = 4.219*(exp(-1.58*t) - exp(-6.32*t));

% Velocity function v(t)
v = 26.67*exp(-6.32*t) - 6.67*exp(-1.58*t);

% Plot displacement
subplot(2,1,1);
plot(t,x,'b','LineWidth',2);
grid on;
xlabel('Time (s)');
ylabel('Displacement x(t) [m]');
title('Displacement vs Time');

% Plot velocity
subplot(2,1,2);
plot(t,v,'r','LineWidth',2);
grid on;
xlabel('Time (s)');
ylabel('Velocity v(t) [m/s]');
title('Velocity vs Time');


