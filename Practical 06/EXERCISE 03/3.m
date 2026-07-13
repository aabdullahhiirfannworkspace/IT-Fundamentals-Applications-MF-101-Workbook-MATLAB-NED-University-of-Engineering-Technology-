clear,clc
density=998;        
v=2.5;               
D=0.05;               
mu=0.001002;         

Re=(density*v*D)/mu;
Re_rounded=round(Re);
fprintf('Reynolds number = %d\n', Re_rounded);