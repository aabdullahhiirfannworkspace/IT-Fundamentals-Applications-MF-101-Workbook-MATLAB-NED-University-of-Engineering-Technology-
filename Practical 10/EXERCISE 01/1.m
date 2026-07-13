clear,clc
% Ask user for input values
a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
c=input('Enter the value of c: ');

D=(b^2)-(4*a*c);
if D > 0
    root1=(-b+sqrt(D))/(2*a);
    root2=(-b-sqrt(D))/(2*a);
    fprintf('The equation has two roots.\n');
    fprintf('Roots: %.4f and %.4f\n', root1, root2);
elseif D==0
    root=-b/(2*a);
    fprintf('The equation has one root.\n');
    fprintf('Root: %.4f\n', root);
else
    fprintf('The equation has no real roots.\n');
end
