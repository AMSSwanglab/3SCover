mmc2 = xlsread("mmc2-1.xlsx")
A = size(mmc2);%mmc2 is the original data
M = A(1);%number of row
N = A(2)-1;%number of column
S= mmc2(1:M,2); %all cell type
IF=cell(30,1);
for c = 30;
    T = zeros(M,N);
    for i=1:N
        [t,t1,t2] = intersect(S,mmc2(2:c+1,i+1));
        n = length(t1);
        for j = 1:n
            T(t1(j),i) = 1;
        end
    end
end

%cplex
N1=233-23; %number of sampling
b = -ones(N1,1);
r = [];
f = ones(1,M);
num= [];
r=[];
for j = 1:1000%repeat 1000 times
    a = randperm(N);
    bb = a(1:N1);
    TT = T(:,bb);
    A = -TT';
    tic
    x = cplexbilp(f, A, b);%cplex 
    toc %time
    num =[num sum(x)];
    r = [r x];%the result
end
output = sum(r,2)

