clear,clc
Half_Life=5730; 
CP=0.7745; 
k=log(0.5)/Half_Life; 
t=log(CP)/k;
age=round(t);

fprintf('Estimated age of footprint = %d years\n', age);