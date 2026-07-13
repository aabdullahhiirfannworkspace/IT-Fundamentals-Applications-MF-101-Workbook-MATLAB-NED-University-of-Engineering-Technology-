clear,clc
%constants
R=0.287;    %kpa.m^3/kg.k
cp=1.005;   %kj/kg.k

P1=300;     %kPa
P2=100;     %kPa

V1=30;      %m/s
V2=180;     %m/s

A1=0.008;   %m^2

T1_C=150:10:300;    %Inlet temperature in °C 
T1_k=T1_C+273;      %Convert to Kelvin

T2_C=T1_C-((V2^2-V1^2)/2)*(1/1000)/cp;
T2_k=T2_C+273;

v1=(R.*T1_k)./P1;       %m^3/kg

mdot=(1./v1).*A1.*V1;   %kg/s

v2=(R.*T2_k)/P2;       %m^3/kg

A2=(mdot.*v2)./V2;      %m^2

Results=table(T1_C', mdot', T2_C', A2', ...
    'VariableNames',{'T1_C', 'MassFlow_kg_s', 'T2_C', 'ExitArea_m2'});
disp(Results)

figure
subplot(3,1,1)
plot(T1_C, mdot)
xlabel('Inlet Temperature (°C)')
ylabel('Mass Flow Rate (kg/s)')
title('Inlet Temperature v/s Mass Flow Rate')

subplot(3,1,2)
plot(T1_C, T2_C)
xlabel('Inlet Temperature (°C)')
ylabel('Exit Temperature (°C)')
title('Inlet Temperature v/s Exit Temperature')

subplot(3,1,3)
plot(T1_C, A2)
xlabel('Inlet Temperature (°C)')
ylabel('Exit Area (m^2)')
title('Inlet Temperature v/s Exit Area')















