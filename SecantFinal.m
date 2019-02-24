e = exp(1); %this is just to define "e"
f=@(x) sqrt(x)-(e^(-x)); %our function
x(1)=0.5; 
x(2)=0.6; %initial guesses
epsilon=10^(-7); %error tolerance
i=1; %this is to keep track of the number of iterations
n=2; %starting from x(3), since we already have x(1) and x(2)
err=(x(2))-(x(1)); %actual value of the error


while (abs(err) > epsilon) %loop continues as long as the error in absolute value is larger than our tolerance
    
    x(n+1)=x(n)-f(x(n))*(x(n)-x(n-1))/(f(x(n))-f(x(n-1))); %formula
    
    err = x(n+1)-x(n); %updating the error
    
      n = n+1; %updaitng all the values
    
   fprintf('iteration  %f : %f\n',i,x(n)); %displaying the it. number and the current x(n)
   
  i=i+1; %updating the iteration count
end
fprintf('Approximate Root:  %f : ',x(n));