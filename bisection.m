function [errorFlag,root, eps] = bisection(expression, upper, lower, epsilon,imax)
%  
% root = zeros(imax,1);
% eps = zeros(imax,1);
try
    errorFlag = '';
    root = [0];
    eps = [0];
    
    for  i=2:(imax+1)
        eval('z=0;');
        z = (upper +lower)/2;       %lowerisectioiterNo method

        eval('f1 = 0;');
        eval('f2 = 0;');
        eval('y=[];');
        syms x;
        try
        y = subs(expression, x, z);
        f1 = eval(y);
        y = subs(expression, x, upper);
        f2 = eval(y);
        catch
            errorFlag = 'Invalid Func or Div by 0';
            return;
        end
        if(f1 * f2 < 0)
            lower = z;
        else
            upper = z;
        end
        if(f1 == 0)
            root(i) = z;
            eps(i) = 0;
            break;
        end
        root(i) = z;
        eval('myeps=0.0;');
        myeps = abs((z-root(i-1))/z);
        eps(i) = abs(myeps);
        if(z==0)
            eps(i) = -1;
        end
        if(abs(myeps)<epsilon)
            break;
        end
    end
catch
    errorFlag = 'Un Idetified Error Occurred';
end

end
% display(root)
% display(iterNo)
% display(precision)