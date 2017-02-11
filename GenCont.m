function x=GenCont(fun,max,n)
rng default;
x=zeros(n,1);
while x(n)==0
    R1=rand;
    k=fun(R1)/max;
    R2=rand;
    if k >= R2
        for j =1:n
            if x(j)==0
                x(j)=R1;
                break
            end
        end
    end
end