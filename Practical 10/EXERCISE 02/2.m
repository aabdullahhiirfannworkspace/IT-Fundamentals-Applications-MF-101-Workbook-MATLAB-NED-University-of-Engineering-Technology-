clear; clc;

% taking inputs
type = input('Enter type of mixing chamber (Type-A or Type-B): ', 's');
Tamb = input('Enter ambient temperature (°C): ');
Tref = input('Enter reference temperature (°C): ');
load_condition = input('Enter load condition (low, medium, or high): ', 's');

% removing extra spaces and fixing case
type = lower(strtrim(type));
load_condition = lower(strtrim(load_condition));

% assigning load factor
if strcmp(load_condition,'low')
    phi = 0.55;
elseif strcmp(load_condition,'medium')
    phi = 0.65;
elseif strcmp(load_condition,'high')
    phi = 0.80;
else
    disp('Wrong load condition entered');
    return;
end

% calculating temperature
if strcmp(type,'type-a')
    Top = ((220 - Tamb) - Tref)*phi + Tref;
elseif strcmp(type,'type-b')
    Top = ((206 - 0.88*Tamb) - Tref)*phi + Tref;
else
    disp('Wrong chamber type entered');
    return;
end

% displaying result
fprintf('Operating temperature = %.2f °C\n', Top);