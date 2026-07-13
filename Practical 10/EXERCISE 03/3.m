clear,clc
% Ask user for inputs
Q=input('Enter heat input Q (Btu/hr): ');
A=input('Enter effective heat transfer area A (in^2): ');

HLI=703*Q/(A^2);
if HLI<18
    condition='Low Thermal Stress';
elseif HLI>=18 && HLI <= 25
    condition='Normal Operation';
elseif HLI>25&&HLI<=29
    condition='High Thermal Stress';
else
    condition='Critical Operation';
end

% Display result
fprintf('The Heat Load Index of the system is %.2f, which corresponds to %s.\n', HLI, condition);
