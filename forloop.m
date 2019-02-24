 n=input('Enter the number of terms ' );
 S=0;
 for k=1:n
 S=S+(-1)^k*k/2^k;
 end
 fprintf('The sum of the series is: %f',S) %%series (((-1)^k)*k)/(2^k)

 for k=1:2:10 %%view numbers from 1 to 10, but with a 2 difference (odds)
 display(k)
end
sum = 0;
for k=1:10; %%sum of numbers from 1 to 10
    
    sum = sum+k;
    
end
display(sum) 