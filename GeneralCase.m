clear;
clc;
values=[0 1 2 4];
probs=[0.1 0.2 0.4 0.3];
cumprobs=cumsum(probs);
samples=zeros(10,1);    %instead of using dynamic memory allocation, we declare an array at the beginning
for k = 1:10            %saves time
    r=rand;
    if r<cumprobs(1)
        loc=1;
    elseif r<cumprobs(2)
        loc=2;
    elseif r<cumprobs(3)
        loc=3;
    else
        loc=4;
    end
    samples(k)=values(loc);
end

% use this for generatlising the loop
% for loc = 1:4
%       if r<cumprobs(loc)
%       break;
%       end
% end

%this also works for summing up  
% for k = 1:10
%       loc= sum(rand>cumprobs)+1;
%       samples(k)=values(loc)
% end
        