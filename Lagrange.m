x = 0.0015;

x0 = 0.001;
x1 = 0.002;
x2 = 0.003;
x3 = 0.004;
x4 = 0.005;

actual = cot(0.0015);

y0 = 1000;
y1 = 499.999;
y2 = 333.332;
y3 = 249.999;
y4 = 199.198;

Lar1 = (y0*((x-x1)/(x0 - x1))) + (y1*((x-x0)/(x1-x0)));
Lar2 = (y0*(((x-x1)/(x0-x1))*((x-x2)/(x0-x2)))) + (y1*((x-x0)/(x1-x0))*((x-x2)/(x1-x2))) + (y2*((x-x0)/(x2-x0))*((x-x1)/(x2-x1)));
Lar3 = (y0*(((x-x1)/(x0-x1))*((x-x2)/(x0-x2))*((x-x3)/(x0-x3))))+ (y1*(((x-x0)/(x1-x0))*((x-x2)/(x1-x2))*((x-x3)/(x1-x3)))) + (y2*(((x-x0)/(x2-x0))*((x-x1)/(x2-x1))*((x-x3)/(x2-x3))))+(y3*(((x-x0)/(x3-x0))*((x-x1)/(x3-x1))*((x-x2)/(x3-x2))));
Lar4 = (y0*(((x-x1)/(x0-x1))*((x-x2)/(x0-x2))*((x-x3)/(x0-x3))*((x-x4)/(x0-x4)))) + (y1*(((x-x0)/(x1-x0))*((x-x2)/(x1-x2))*((x-x3)/(x1-x3))*((x-x4)/(x1-x4)))) + (y2*(((x-x0)/(x2-x0))*((x-x1)/(x2-x1))*((x-x3)/(x2-x3))*((x-x4)/(x2-x4)))) + (y3*(((x-x0)/(x3-x0))*((x-x1)/(x3-x1))*((x-x2)/(x3-x2))*((x-x4)/(x3-x4))))+(y4*(((x-x0)/(x4-x0))*((x-x1)/(x4-x1))*((x-x2)/(x4-x2))*((x-x3)/(x4-x3))));

Error = (Lar4 - actual);

fprintf('Actual Value : %f\n' , actual);
fprintf('Approximation 1 : %f\n' , Lar1);
fprintf('Approximation 2 : %f\n' , Lar2);
fprintf('Approximation 3 : %f\n' , Lar3);
fprintf('Approximation 4 : %f\n' , Lar4);
fprintf('Error : %f\n' , Error);