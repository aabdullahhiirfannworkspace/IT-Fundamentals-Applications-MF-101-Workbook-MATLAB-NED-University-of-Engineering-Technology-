clc,clear

% Define particle data
Mass = [0.5 0.8 0.2 1.1 0.4 0.9];          % kg
x = [-10 -18 -7 5 0 25];                   % mm
y = [8 6 11 12 -8 -20];                    % mm
z = [32 19 2 -9 -6 8];                     % mm

% Total mass
M_total = sum(Mass);

% Center of mass coordinates
x_bar = sum(Mass .* x) / M_total;
y_bar = sum(Mass .* y) / M_total;
z_bar = sum(Mass .* z) / M_total;

% Display results
fprintf('Center of Mass Coordinates:\n');
fprintf('x? = %.2f mm\n', x_bar);
fprintf('y? = %.2f mm\n', y_bar);
fprintf('z? = %.2f mm\n', z_bar);
