clear,clc
P=101325;       
R=287.05;       
T=35+273.15;  

rho=P/(R*T);
fprintf('Air density rho = %.3f kg/m^3\n', rho);