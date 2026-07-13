clc; clear

% Define the table data
Section = [1 2 3];
Stress1 = [50 55 60];
Stress2 = [60 65 70];
Stress3 = [70 75 80];
Stress4 = [80 85 90];

% Put into a matrix for easier indexing
Stresses = [Stress1; Stress2; Stress3; Stress4]';

% a) Stress at Section 2 for Stress 3
s_a = Stresses(2,3);

% b) All stress values at Section 3
s_b = Stresses(3,:);

% c) Modify Stress 1 of Section 1 from 50 to 100
Stresses(1,1) = 100;
s_c = Stresses(1,1);

% d) Extract stress values for the first three stress readings at Section 2
s_d = Stresses(2,1:3);

% Display results
fprintf('a) Stress at Section 2 for Stress 3 = %d MPa\n', s_a);
fprintf('b) Stress values at Section 3 = [%d %d %d %d] MPa\n', s_b);
fprintf('c) Updated Stress 1 at Section 1 = %d MPa\n', s_c);
fprintf('d) First three stress values at Section 2 = [%d %d %d] MPa\n', s_d);
