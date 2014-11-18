function[errorFlag,root,eps] = secant(expression, xl,xu, es, imax)
% root = zeros(imax,1);
% eps = zeros(imax, 1);

root = [0];
eps = [0];
errorFlag = '';
try
    for i =1:imax
        syms x;
        eval('y = [];'); 
        eval('z = 0;');
        eval('z2 = 0;');
        try
        y = subs(expression, x, xl);
        z = eval(y);
        y = subs(expression, x, xu);
        z2 = eval(y);
        catch
            errorFlag = 'Invalid Func or Div by 0';
            returen;
        end
        if(z2 == z)
            errorFlag = 'Division by zero';
            return;
        end
        xr = xu - z2*(xu-xl)/(z2-z);
        y = subs(expression, x,xr);
        eval('fz = 0;');
        fz = eval(y);
        if(fz == 0)
            root(i) = xr;
            eps(i) = 0;
            break;
        end
        ea = abs(xr-xl)/xr;
        xl = xu;
        xu = xr;
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
