function [x, t] = GaussPivot(A, b)
tic;
n = length(A);
nb = n+1;
Aug=[A b];

% forward elimination
for k = 1 : n-1
    % partial pivoting
    [~,i] = max(abs(Aug(k:n, k)));
    ipr = i + k - 1;

    if ipr ~= k
        Aug([k ipr],:) = Aug([ipr k],:);
    end

    for i = k+1:n
        factor = Aug(i, k)/ Aug(k, k);
        Aug(i, k:nb) = Aug(i, k:nb) - factor*Aug(k, k:nb);
    end
end

if Aug(n,n) == 0
    disp('No unique solution');
else 
    % back substitution
    x = zeros(n, 1);
    x(n) = Aug(n,nb) / Aug(n,n);
    for i = n-1:-1:1
     x(i) = (Aug(i,nb) - Aug(i,i+1:n)*x(i+1:n)) / Aug(i,i);
    end
end

t = toc;
end