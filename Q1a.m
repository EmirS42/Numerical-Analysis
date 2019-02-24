

h=1/2; 
n=144/h; %parameters
x(1)=600; %initial x(t) and y(t)
y(1)=0;

w=(1/72)*2*pi; %omega initial value
for i = 1:n
    
    x(i+1)=x(i)+h*(-w*y(i)); %Euler's 
    y(i+1)=y(i)+h*(w*x(i));
    
end
plot(x,y)
title('Plot 1a')
xlabel('x')
ylabel('y')