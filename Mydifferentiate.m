function derivative = Mydifferentiate(expression , subst)
try
    syms x;
    eval('yy = [];');
    yy = subs(expression, x, subst+0.01);
    z1 = eval(yy);
    yy = subs(expression, x,subst-0.01);
    z2 = eval(yy);
    yy = subs(expression,x,subst+0.02);
    z3 = eval(yy);
    yy = subs(expression,x,subst-0.02);
    z4 = eval(yy);
    derivative = (-1*z3 + 8*z1 -8*z2 +z4)/(12*0.01);
catch
    derivative = 0;
end
end