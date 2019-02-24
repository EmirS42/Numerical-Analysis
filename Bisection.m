  

epsilon = 10^(-7); %allowed error 
     
   f=@(x) x^2 - 2; %function can be modified here
     
     
   g1 = input('enter guess 1: '); %guesses
g2 = input('enter guess 2: ');
     i = 0;
     
     while ( ((g2 - g1)/(abs(g1))) > epsilon )
         
      m = (g1+g2)/2;           % Mid point
      fm = f(m);       
      fg1 = f(g1);       
    
        if ( (fm > 0 && fg1 < 0) || (fm < 0 && fg1 > 0) )
          g2 = m; %if f(g1) and f(m) have different signs, we make guess 2 equal to the midpoint 
       
        else
          g1 = m;  %if f(a) and f(m) have the same sign, we make guess 1 equal to the midpoint   
          
                           
        end
        i = i+1;
            fprintf('interval %f : %f - %f\n',i,g1,g2)
     end
     display("Approximate Root: " + (g1+g2)/2 );
      
   