clc,clear

% Define the table data
Point = [1 2 3];
Temp1 = [120 118 115];
Temp2 = [125 123 120];
Temp3 = [130 128 125];
Temp4 = [135 133 130];
Temp5 = [140 138 135];

% Put into a matrix for easier indexing
Temps = [Temp1; Temp2; Temp3; Temp4; Temp5]';

% a) Temperature at Point 1 for Temp 4
t_a = Temps(1,4);

% b) All temperatures at Point 2
t_b = Temps(2,:);

% c) Modify Temp 3 at Point 3 to 150°C
Temps(3,3) = 150;
t_c = Temps(3,3);

% d) Extract Temp 2 to Temp 4 at Point 1
t_d = Temps(1,2:4);

% Display results
fprintf('a) Temperature at Point 1 for Temp 4 = %d °C\n', t_a);
fprintf('b) Temperatures at Point 2 = [%d %d %d %d %d] °C\n', t_b);
fprintf('c) Modified Temp 3 at Point 3 = %d °C\n', t_c);
fprintf('d) Temp 2 to Temp 4 at Point 1 = [%d %d %d] °C\n', t_d);
