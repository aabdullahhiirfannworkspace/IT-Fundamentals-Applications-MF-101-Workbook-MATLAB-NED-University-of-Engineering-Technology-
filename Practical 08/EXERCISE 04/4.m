clc; clear

% Define the table data
Observation = [1 2 3 4];
Load1 = [2.5 2.8 3.1 3.4];
Load2 = [3.0 3.3 3.6 3.9];
Load3 = [3.5 3.8 4.1 4.4];

% Put into a matrix for easier indexing
Displacements = [Load1; Load2; Load3]';

% a) Displacement at Observation 4 for Load 2
d_a = Displacements(4,2);

% b) All displacements at Observation 1
d_b = Displacements(1,:);

% c) Modify Load 3 displacement at Observation 2 to 5.0 mm
Displacements(2,3) = 5.0;
d_c = Displacements(2,3);

% d) Extract displacements for Observation 2 to 3 for all loads
d_d = Displacements(2:3,:);

% Display results
fprintf('a) Displacement at Observation 4 for Load 2 = %.1f mm\n', d_a);
fprintf('b) Displacements at Observation 1 = [%.1f %.1f %.1f] mm\n', d_b);
fprintf('c) Updated Load 3 displacement at Observation 2 = %.1f mm\n', d_c);
fprintf('d) Displacements for Observation 2 to 3 for all loads:\n');
disp(d_d);
