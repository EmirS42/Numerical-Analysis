

h=1/2;
n=144/h; %parameters
w=(1/72)*2*pi; %omega
x(1)=600; %initial values
y(1)=0;

for i = 2:n
    y(2)=y(1)+h*(w*x(1)); %Forward Euler first steps
    x(2)=x(1)+h*(w*y(1));
    
    x(i+1)=x(i-1)+2*h*(-w*y(i));  %Centred-Difference Scheme
    
    y(i+1)=y(i)+h*(w*x(i));
    y(i+1)=y(i-1)+2*h*w*x(i);
end
plot(x,y);
title('Plot 1b')
xlabel('x')
ylabel('y')