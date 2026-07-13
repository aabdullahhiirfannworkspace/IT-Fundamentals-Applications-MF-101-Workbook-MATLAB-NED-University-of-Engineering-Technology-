clear,clc
lambda_p=530; %wave length in nm
lambda_s=630; %wavelength in nm
c=300*10^6; %speed of light in m/s
ratio=(lambda_p/lambda_s)^2; 
v=(c*(1-ratio))/(1+ratio);

fprintf('Required observer speed = %.2e m/s\n', v);

