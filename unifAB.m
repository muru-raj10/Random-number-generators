function x=unifAB(a,b,n)
rng default;
R= rand([n,1]);
x=a+(b-a)*R;
xcor=linspace(min(x),max(x),100);
ycor=1/(b-a);
plot(xcor,ycor,'r-');
hold on;
[N,X]=hist(x); %using default 10 intervals.
bar(X,N/(n*(max(x)-min(x))/10));
