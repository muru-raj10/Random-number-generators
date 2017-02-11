function x=Triangular(a,b,c,n)
rng default;
R= rand([n,1]);
for i = 1:n
    if R<= (1/3)
        x=1+sqrt(3*R);
    else
        x=4+sqrt(9-6*R);
    end
end

xcor=linspace(min(x),max(x),100);
ycor=zeros(1,100);
for i = 1:100
if (xcor(i)>=a) && (xcor(i)<=b)
    ycor(i)=(2/3)*(xcor(i)-1);
elseif ((xcor(i)>b) && (xcor(i)<=c))
    ycor(i)=(-1/3)*xcor(i)+(4/3);
end
end

plot(xcor,ycor,'r-');
hold on;
[N,X]=hist(x); %using default 10 intervals.
bar(X,N/(n*(max(x)-min(x))/10));

