s=0.1; 
n=25/s; %parameters
theta(1)=0; %initial values
v(1)=0.6;

g = 9.8; %gravity constant
for i = 1:n
    
    theta(i+1)=theta(i)+s*((1/9)*v(i)); %Forward Euler's methods
    v(i+1)=v(i)+s*(-g*sin(theta(i)));
    
end

plot(v);
title('Plot 2a')
xlabel('t')
ylabel('v')