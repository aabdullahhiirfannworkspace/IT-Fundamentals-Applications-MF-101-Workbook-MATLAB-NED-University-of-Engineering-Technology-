clc, clear
% Given parameters
Tb = 200;        % Base temperature (°C)
Tinf = 25;       % Ambient temperature (°C)
m = 15;          % Parameter (1/m)

% Create vector X from 0 to 0.1 m with 10 points
X = linspace(0,0.1,10);

% Temperature distribution formula
T = Tinf + (Tb - Tinf) * exp(-m * X);

% Display results
disp('Temperature values at each point along the fin:');
disp(T);

% Plot temperature distribution
plot(X,T,'r-o','LineWidth',2);
grid on;
xlabel('Fin Length x (m)');
ylabel('Temperature T(x) (°C)');
title('Temperature Distribution Along Cooling Fin');
