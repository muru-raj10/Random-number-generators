function x=exponential(lambda,n)
rng default;
R= rand([n,1]);
x=-(1/lambda)*log(1-R);
xcor=linspace(min(x),max(x),100);
ycor=lambda*exp(-(lambda*xcor));
plot(xcor,ycor,'r-');
hold on;
[N,X]=hist(x); %using default 10 intervals.
bar(X,N/(n*(max(x)-min(x))/10));  

