clear,clc
k=1.2;         
A=15;         
L=0.25;        
T1=600;      
T2=50;        
Q=(k*A*(T1-T2))/L;
fprintf('Heat Loss Q = %.2f W \n', Q);