

e = exp(1); %defining e
t = 0:0.01:pi; %t from 0 to pi, using step size 0.1 for this
f = @(t) ((1/4)*2^(1/2)*e.^(-t).*sin(2*2^(1/2)*t)); %the solution we got
plot(t, f(t));
title('Analytical Solution')
xlabel('t')
ylabel('y(t)')