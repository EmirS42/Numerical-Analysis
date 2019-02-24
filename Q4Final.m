%%

y0 = [0; 1];
h = 0.001;
t = 0:h:pi; %the range of t
n = length(t);
y = nan(2, length(t));
y(:, 1) = y0; %initializations
 
for n = 1:n-1  % solving Ax = b;
    
    u = y(1, n); %our u and v's as definted
    v = y(2, n);
    A = [1, -h; 9*h, 1+2*h]; %the matrix A we found earlier
    b = [u; v]; %the solution vector
    x = A\b; %inverting the matrix for the solutions
    y(1,n+1) = x(1);
    y(2,n+1) = x(2);
end

plot(t, y(1, :), '-'); hold on;

%%
y0 = [0; 1];
h = 0.01;
t = 0:h:pi; 
n = length(t);
y = nan(2, length(t));
y(:, 1) = y0; 
 
for n = 1:n-1  
    
    u = y(1, n);
    v = y(2, n);
    A = [1, -h; 9*h, 1+2*h];
    b = [u; v];
    x = A\b;
    y(1,n+1) = x(1);
    y(2,n+1) = x(2);
end

plot(t, y(1, :), '-'); hold on;


%%
y0 = [0; 1];
h = 0.02;
t = 0:h:pi; 
n = length(t);
y = nan(2, length(t));
y(:, 1) = y0; 
 
for n = 1:n-1  
    
    u = y(1, n);
    v = y(2, n);
    A = [1, -h; 9*h, 1+2*h];
    b = [u; v];
    x = A\b;
    y(1,n+1) = x(1);
    y(2,n+1) = x(2);
end

plot(t, y(1, :), '-'); hold on;


%%
y0 = [0; 1];
h = 0.05;
t = 0:h:pi; 
n = length(t);
y = nan(2, length(t));
y(:, 1) = y0;
 
for n = 1:n-1  
    
    u = y(1, n);
    v = y(2, n);
    A = [1, -h; 9*h, 1+2*h];
    b = [u; v];
    x = A\b;
    y(1,n+1) = x(1);
    y(2,n+1) = x(2);
end

plot(t, y(1, :), '-'); hold on;
legend('h = 0.001', 'h = 0.01', 'h = 0.02', 'h = 0.05');