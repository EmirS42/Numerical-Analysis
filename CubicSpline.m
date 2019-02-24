%Implementing Algorithm 3.4, provided on pg 149 of the txtbook, steps have
%been identically replicated & labeled

f_x = @(x) sin(pi*x); %our function
X = [0, 0.25, 0.5, 0.75, 1.0]; n = 5; %given values, and the amount of them
a = arrayfun(f_x,X); %this applies f(a) to each element of X, so we get the f values
b = zeros(1,n); c = zeros(1,n); d = zeros(1,n); %here we initialize b,c,d as zero vectors,

h = []; 
for i=1:(n-1) %STEP 1
h(end+1) = X(1,i+1)-X(1,i); %this set hi = xi+1 - xi   
end

ai = [0]; 
for i=2:(n-1) %STEP 2
ai(end+1) = (3/h(i))*(a(i+1)-a(i))-(3/h(i-1))*(a(i)-a(i-1)); %this sets the ai's appropriately as given
end

l = [1]; u = [0]; z = [0]; %STEP 3
for i=2:(n-1)  %STEP 4
  l(end+1) = 2*(X(i+1)-X(i-1))-h(i-1)*u(i-1); 
  u(end+1) = h(i)/l(i);
  z(end+1) = (ai(i)-h(i-1)*z(i-1))/l(i);
end
l(end+1) = 1; z(end+1) = 0; u(end+1) = 0; %STEP 5

for j=(n-1):-1:1 %STEP 6
  c(j) = z(j)-u(j)*c(j+1);
  b(j) = (a(j+1)-a(j))/h(j)-h(j)*(c(j+1)+2*c(j))/3;
  d(j) = (c(j+1)-c(j))/(3*h(j));
end

for i=1:4 %this part is just printing the values
fprintf('a%d: %4.4f\n', i-1, a(i));
fprintf('b%d: %4.4f\n', i-1, b(i));
fprintf('c%d: %4.4f\n', i-1, c(i));
fprintf('d%d: %4.4f\n', i-1, d(i));
end
