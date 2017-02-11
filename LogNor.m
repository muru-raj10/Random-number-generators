function x=LogNor(mu,var,n)
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
                x(j)=exp(mu+x1*sqrt(var));
                x(j+1)=exp(mu+x2*sqrt(var));
                break
            end
        end
    end
end