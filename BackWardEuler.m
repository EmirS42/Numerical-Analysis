a = 0;          %interval we are solving within.
b = 2;


F = @(t,y) (y - t^2 + 1);  %model we are solving. 

N = 10;            %number steps we will use
h = (b - a)/N;      %step size
y(1) = 0.5;         %initial value for y
t(1) = a;           %initial value for t.

for i=1:N
y(i+1) = y(i) + h*F(t(i),y(i));         %Euler's Method
t(i+1) = a + i*h;                       %next time step
y(i+1) = y(i) + h*(F(t(i+1),y(i+1))); %update 

fprintf(':  %f , %f\n' ,t(i+1), y(i+1)); 

end