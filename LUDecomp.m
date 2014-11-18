function [x, t] = LUDecomp(A, B)
tic;

n = length(A);
U = A;
L = eye(n);

% Buliding U and L
for k = 1 : n-1 
    for i = k+1 : n
        factor = U(i, k) / U(k, k);
        L(i, k) = factor;
        U(i, k:n) = U(i, k:n) - factor*U(k, k:n);
    end
end
%Now you have L and U ready

% Acuiring D vector
D = zeros(n,1);
D(1) = B(1);
for i = 2 : n
    D(i)= B(i) - L(i,i-1:-1:1)*D(i-1:-1:1);
end

% back substitution to get X out of D
x=zeros(n,1);
x(n)= D(n)/ U(n,n);
for i = n-1 : -1 : 1
    x(i)=(D(i) - U(i,i+1:n)*x(i+1:n)) / U(i,i);
end
t = toc;
end