function [errorFlag,root,eps] = fixedPoint(expression, x0, es, imax)
% root = zeros(imax,1);
% eps = zeros(imax, 1);
root = [0];
eps = [0];
%expression = strcat(expression,'-x');
errorFlag = '';
try
    for i = 1 : imax
        syms x;
        eval('y = [];'); 
        eval('z = 0;');
        try
        y = subs(expression, x, x0);
        z = eval(y);
        catch
            errorFlag = 'Invalid Func or Div by 0';
            return;
        end
        y = subs(expression,x,z);
        eval('fz = 0;');
        fz =eval(y);
        if(z == Inf)
            errorFlag = 'The function diverged';
            break;
        end
        if(z == -Inf)
            errorFlag = 'The function diverged';
            break;
        end
        if(fz == z)
            root(i) = z;
            eps(i) = 0;
            break;
        end
        root(i) = z;
        
        ea = abs(z-x0)/z;
        eps(i) = ea;
        if(abs(ea) < abs(es)) 
            break;
        end
        x0 = z;
    end
catch
    errorFlag = 'Un Identified Error Occurred';
    return;
end
end

