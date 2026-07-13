clear; clc;

% taking inputs
Qin = input('Enter heat input Qin (kJ): ');
Wout = input('Enter work output Wout (kJ): ');

% calculating efficiency
eta = Wout / Qin;

% displaying efficiency
fprintf('Efficiency (eta) = %.2f\n', eta);

% checking performance
if eta < 0.20
    disp('Performance: Poor');
elseif eta < 0.35
    disp('Performance: Average');
elseif eta < 0.50
    disp('Performance: Good');
else
    disp('Performance: Excellent');
end