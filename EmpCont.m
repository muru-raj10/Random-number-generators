function x=EmpCont(n)
rng default;
x=zeros(n,1);
for i = 1:n
    R=rand;
    if R<= 0.2
        x(i)=2.5*R+0.3;
    elseif R<=0.7
        x(i)=(7/5)*(R-0.2)+0.8;
    elseif R<=1
        x(i)=(10/3)*(R-0.7)+1.5;
    end
end
xcor=linspace(0.3,2.5,100);
ycor=zeros(1,100);
for i=1:100
    if xcor(i)<=0.8
        ycor(i)=(2/5);
    elseif xcor(i)<1.5
        ycor(i)=(5/7);
    elseif xcor(i)<=2.5
        ycor(i)=0.3;
    end
end

plot(xcor,ycor,'r-');
hold on;
[N,X]=hist(x); %using default 10 intervals.
bar(X,N/(n*(max(x)-min(x))/10)); 

