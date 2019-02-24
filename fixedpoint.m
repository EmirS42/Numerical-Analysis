
%our function: x^2 - x - 1 = 0
%-> x^2 = x + 1
%-> x = 1 + 1/x

f=@(x) 1 + 1/x; 
p0 = 1; %initial value
maxit = 25; %we use a max iteration, since this method may not converge at all
i = 0; %iteration count



while (i < maxit)
    
    p = f(p0);
    fprintf('iteration  %f : %f\n' ,i+1, p0);
    i = i + 1;
    p0 = p;
     
end