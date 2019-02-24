alpha = 0.5;
a = 0;
b = 2;
N = 10;

h = ((b - a)/N);
t = a;
w = alpha;

f = @(t,y) (y - t^2 + 1);

for i=1:N
    
    w(i+1) = w(i) + h*(f(t(i),w(i)));
    t(i+1) = t(i)+h; 
    
    fprintf(':  %f , %f\n' ,t(i+1), w(i+1)); 
end