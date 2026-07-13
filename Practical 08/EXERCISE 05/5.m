clc, clear

% Define the table data
RPM = [1 2 3];
Mode1 = [45 48 52];
Mode2 = [50 53 57];
Mode3 = [55 58 62];

% Put into a matrix for easier indexing
Power = [Mode1; Mode2; Mode3]';

% a) Power output at RPM Level 3 for Mode 2
p_a = Power(3,2);

% b) All power values at RPM Level 1
p_b = Power(1,:);

% c) Modify Mode 1 power at RPM Level 2 to 60 kW
Power(2,1) = 60;
p_c = Power(2,1);

% d) Extract power outputs for Mode 1 and Mode 2 at RPM Level 3
p_d = Power(3,1:2);

% Display results
fprintf('a) Power output at RPM Level 3 for Mode 2 = %d kW\n', p_a);
fprintf('b) Power values at RPM Level 1 = [%d %d %d] kW\n', p_b);
fprintf('c) Modified Mode 1 power at RPM Level 2 = %d kW\n', p_c);
fprintf('d) Power outputs for Mode 1 and Mode 2 at RPM Level 3 = [%d %d] kW\n', p_d);
