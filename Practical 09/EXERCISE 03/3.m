clc,clear

% Represent equations in matrix form A*Q = b
A = [1  1 -1;   % Equation 1
    5 -2  0;   % Equation 2
    0  3  4];  % Equation 3

b = [0; 10; 15];

% Solve for Q = [Q1; Q2; Q3]
Q = A\b;

% Extract results
Q1 = Q(1);
Q2 = Q(2);
Q3 = Q(3);

% Display results
fprintf('Flow Rates:\n');
fprintf('Q1 = %.2f\n', Q1);
fprintf('Q2 = %.2f\n', Q2);
fprintf('Q3 = %.2f\n', Q3);
