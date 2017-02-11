function x= tridist(a,b,c,n)
default rng;
R= rand([n,1]);


xcor=linspace(min(x),max(x),100);
ycor=;


plot(xcor,ycor,'r-');
hold on;
[N,X]=hist(x); %using default 10 intervals.
bar(X,N/(n*(max(x)-min(x))/10));