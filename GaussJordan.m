function [x, t] = GaussJordan(A, b)
tic;
n = length(A);
nb = n+1;
Aug=[A b];

k = 1;
for k = 1 : n
    i = k;
    while (i <= n && Aug(i, i) == 0)
        i = i + 1;
    end
    
    if (i > n)
        break;
    end
    
    if (i ~= k)
        Aug([i k], :) = Aug([k i], :);
    end
    
    toDiv = Aug(k, k);
    Aug(k, :) = Aug(k, :) / toDiv;
    
    for i = 1 : k-1
        Aug(i, :) = Aug(i, :) - Aug(i, k)*Aug(k, :);
    end
    for i = k+1 : n
        Aug(i, :) = Aug(i, :) - Aug(i, k)*Aug(k, :);
    end
end

if Aug(k, k) == 0
    disp('No unique solution');
else 
    x = zeros(n, 1);
    for i = 1 : n
     x(i) = Aug(i, nb);
    end
end
t = toc;
end