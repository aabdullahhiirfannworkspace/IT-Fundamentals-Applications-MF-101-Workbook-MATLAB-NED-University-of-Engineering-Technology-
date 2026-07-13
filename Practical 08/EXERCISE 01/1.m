clc, clear

% Define the table data
Time = [1 2 3];
Velocity1 = [10 12 14];
Velocity2 = [15 18 21];
Velocity3 = [20 24 28];
Velocity4 = [25 30 35];

% Put into a matrix for easier indexing
Velocities = [Velocity1; Velocity2; Velocity3; Velocity4]';

% a) Velocity at time point 2 for Velocity 3
v_a = Velocities(2,3);

% b) Velocities at time point 3 for all test conditions
v_b = Velocities(3,:);

% c) Modify Velocity 2 at time point 1 from 15 to 40
Velocities(1,2) = 40;
v_c = Velocities(1,2);

% d) Extract velocities for first two test conditions at time point 2
v_d = Velocities(2,1:2);

% Display results
fprintf('a) Velocity at time point 2 for Velocity 3 = %d m/s\n', v_a);
fprintf('b) Velocities at time point 3 for all test conditions = [%d %d %d %d] m/s\n', v_b);
fprintf('c) Updated Velocity 2 at time point 1 = %d m/s\n', v_c);
fprintf('d) Velocities for first two test conditions at time point 2 = [%d %d] m/s\n', v_d);
