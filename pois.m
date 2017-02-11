function x=pois(lambda,n)
rnd default;
k=1;
x=zeros(n);
for i = 1:n
    R= rand(1);
    a=1;
    a=a*R;
    if a>exp(-lambda)
        k=k+1;
        continue
    else
        x(i)=k-1;
    end
end

xcor=linspace(min(x),max(x),100);
ycor=exp(-lambda);
for i =1:k
    ycor=ycor*(lambda)/(i+1); %??????????????
end
plot(xcor,ycor,'r-');
hold on;
[N,X]=hist(x); %using default 10 intervals.
bar(X,N/(n*(max(x)-min(x))/10));