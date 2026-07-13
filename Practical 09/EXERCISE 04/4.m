clear,clc

% Given parameters
k = 1.4;                          % Air constant
rp = 5:5:25;                      % Pressure ratios from 5 to 25 in steps of 5

% Thermal efficiency formula (vectorized)
eta_th = 1 - 1 ./ (rp.^((k-1)/k));

% Display results as a table
Results = table(rp', eta_th', 'VariableNames', {'Pressure_Ratio', 'Efficiency'});
disp(Results);

% Plot efficiency vs pressure ratio
plot(rp, eta_th, 'b-o', 'LineWidth', 2, 'MarkerSize', 6);
grid on;
xlabel('Pressure Ratio r_p');
ylabel('Thermal Efficiency ?_{th}');
title('Brayton Cycle Thermal Efficiency vs Pressure Ratio');
