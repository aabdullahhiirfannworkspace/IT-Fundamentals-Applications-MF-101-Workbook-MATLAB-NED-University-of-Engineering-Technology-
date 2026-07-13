clear; clc;

% taking inputs
value = input('Enter pressure value: ');
from_unit = lower(input('Enter current unit (Pa, psi, atm, torr): ', 's'));
to_unit = lower(input('Enter desired unit (Pa, psi, atm, torr): ', 's'));

% convert everything to Pa first
if strcmp(from_unit,'pa')
    pa = value;
elseif strcmp(from_unit,'psi')
    pa = value * 6894.76;
elseif strcmp(from_unit,'atm')
    pa = value * 101325;
elseif strcmp(from_unit,'torr')
    pa = value * 133.322;
else
    disp('Invalid input unit');
    return;
end

% convert from Pa to desired unit
if strcmp(to_unit,'pa')
    result = pa;
elseif strcmp(to_unit,'psi')
    result = pa / 6894.76;
elseif strcmp(to_unit,'atm')
    result = pa / 101325;
elseif strcmp(to_unit,'torr')
    result = pa / 133.322;
else
    disp('Invalid output unit');
    return;
end

% display result
fprintf('Converted pressure = %.2f %s\n', result, to_unit);
