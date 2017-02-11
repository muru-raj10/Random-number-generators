function Y=Discrete(X,P,n)    %Input matrix of values of x and corresponging probabilities
%rng default;                 %n is the required sample size
R= rand([n,1]);               %Generate n random numbers
Y=zeros(length(R),1);         
cumprobs=cumsum(P);           %cumulative probability
for i =1:length(R)
    for j = 1:length(P)            
        if R(i)<=cumprobs(j)
            Y(i)=X(j);
            if Y(i) ~= 0      %once the element in the array is filled
                break         %break
            end
        end
    end
end
%histogram(Y,'Normalization','pdf'); %plot a histogram of our sample


