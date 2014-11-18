function [errorFlag,root, eps] = falsePosition(expression,oldPoint, newPoint, epsilon,imax)
 
% root = zeros(imax,1);
% eps = zeros(imax,1);
try
    errorFlag = '';
    root = [0];
    eps = [0];
    for i=2:(imax+1)
        syms x;
        eval('y = [];');  
        eval('f1 = 0;');
        eval('f2 = 0;');
        try
        y = subs(expression,x,oldPoint);
        f1 = eval(y);
        y = subs(expression,x,newPoint);
        f2 = eval(y);
        eval('z = 0;');
        if(f1 ==f2)
            errorFlag = 'Division by zero';
            return;
        end

        z = oldPoint - ( ( (oldPoint-newPoint)*(f1) )/ (f1-f2));
        eval('fz = 0;');
        try
            y = subs(expression, x, z);
        catch
            errorFlag = 'Invalid Func or Div by 0';
            return;
        end
        fz = eval(y);
        catch
            errorFlag = 'Invalid Func or Div by 0';
            return;
        end
        if(fz * f1 < 0)
            newPoint = z;
        else
            oldPoint = z;
        end
        if(fz == 0)
            root(i) = z;
            eps(i) = 0;
            break;
        end
        root(i) = z;
        eval('cureps = 0;');
        cureps = abs(z-root(i-1))/z;
        eps(i) = cureps;
        if(abs(cureps)<epsilon)
            break;
        end
    end
catch
    errorFlag = 'Un Identified Error Occurred';
end
end