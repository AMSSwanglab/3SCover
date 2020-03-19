filename 
RSS = xlsread(filename)
A = size(RSS);%mmc2 is the original data
M = A(1);%number of row
N = A(2);%number of colume

T = zeros(M,N);
%find the first 30 TFs
cutoff = 30;
for i = 1:N
    x = RSS(:,i);
    [y, index] = sort(x,'descend');
    T(:,i) = x>y(cutoff+1);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N1=818-82; %number of sampling
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
