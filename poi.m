function x=poi(lam,n)   %Acceptance rejection method
x=zeros(n,1);           %n is the number of required samples
p=1;
k=0;
while x(n)==0
    R=rand;
    p=p*R;
    if p>exp(-lam)
        k=k+1;          %Skip to next iteration
    else
        for j=1:n
            if x(j)==0
                x(j)=k; %assign when array is empty
                break
            end
        end
        k=0;
        p=1;
    end
end
histogram(x,'Normalization','pdf');
