
x(1) = 1; %initial values
y(1) = -1;
z(1) = 30; 
h = 0.005;
n = 100/h; %parameters

for i=1:n
    X=x(i)+h*(10*(y(i)-x(i))); %first steps
    Y=y(i)+h*(x(i)*(28-z(i))-y(i));
    Z=z(i)+h*(x(i)*y(i)-(8/3)*z(i));
    
    x(i+1)= x(i)+(1/2)*h*(10*(y(i)-x(i))+10*(Y-X)); %updates
    y(i+1)= y(i)+(1/2)*h*(x(i)*(28-z(i))-y(i)+X*(28-Z)-Y);
    z(i+1)= z(i)+(1/2)*h*(x(i)*y(i)-(8/3)*z(i)+X*Y-(8/3)*Z);
end

plot(x,z);
title('Plot 3')