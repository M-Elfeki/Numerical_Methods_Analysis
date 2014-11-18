function [errorFlag,root, eps ] = newtonRaphson(expression, xl,es,imax)
% root = zeros(imax, 1);
% eps = zeros(imax, 1);

root = [0];
eps = [0];
errorFlag = '';
try
    for i =1:imax
        syms x;
        eval('y = [];');
        y = subs(expression, x, xl);
        if(y == '')
            errorFlag = 'Invalid Func or Div by 0';
            break;
        end
        eval('dif = 0;');
        dif = Mydifferentiate(expression, xl);
        if(dif == 0)
            errorFlag = 'First Derivative = 0 Error';
            return;
        end
        xr = xl - eval(y)/dif;
        y = subs(expression, x, xr);
        eval('fz = 0;');
        fz = eval(y);
        if(fz == 0)
            root(i) = xr;
            eps(i) = 0;
            break;
        end
        ea = abs(xr-xl)/xr;
        xl = xr;
        root(i) = xr;
        eps(i) = ea;
        if(abs(ea)<abs(es))
            break;
        end
    end
catch
     errorFlag = 'Un Identified Error Occurred';
end
end