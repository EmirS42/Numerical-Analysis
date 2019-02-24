e = exp(1); %defining "e"
p0 = 0.5; %initial guess
maxit = 5; %max iterations
i = 0; %iteration count
f = @(x) x^5 - (0.015*x^4) + 0.000085 x^3 - 2.25*10^-7 x^2 + 2.74*10^-10 x - 1.2*10^-13; %our funciton
derf = @(x) e^(-x) + 1/(2*sqrt(x)); %its derivative


while (i < maxit)
    
    p = p0 - f(p0)/derf(p0); %Newton's method formula
    i = i+1; %updating the iteration count
    p0 = p;
    
    fprintf('iteration  %f : %f\n' ,i, p); %printing the process
    
end
fprintf('Approximate Root: %f\n' , p);