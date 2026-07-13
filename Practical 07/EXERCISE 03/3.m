clear,clc
k=401;              
L=300/100;        
ri=3/100;        
ro= 5/100;        
Ti=100;            
To=20;             

q=2*pi*L*k*(Ti-To)/log(ro/ri);
fprintf('Heat transfer rate q = %.2f W\n', q);