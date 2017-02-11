function x=Normal(mu,var,n)
rng default;
x=zeros(n,1);
while x(n)==0
    R1=rand;
    R2=rand;
    V1=2*R1-1;
    V2=2*R2-1;
    S=V1^2+V2^2;
    if S<1
        x1=sqrt(-2*log(R1))*cos(2*pi*R2);
        x2=sqrt(-2*log(R1))*sin(2*pi*R2);
        for j = 1:n
            if x(j)==0
                x(j)=mu+x1*sqrt(var);
                x(j+1)=mu+x2*sqrt(var);
                break
            end
        end
    end
end

% xcor=linspace(0.3,2.5,100);
% ycor=zeros(1,100);
% for i=1:100
%     if xcor(i)<=0.8
%         ycor(i)=(2/5);
%     elseif xcor(i)<1.5
%         ycor(i)=(5/7);
%     elseif xcor(i)<=2.5
%         ycor(i)=0.3;
%     end
% end
% 
% plot(xcor,ycor,'r-');
% hold on;
% [N,X]=hist(x); %using default 10 intervals.
% bar(X,N/(n*(max(x)-min(x))/10)); 

