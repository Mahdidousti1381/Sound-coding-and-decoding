syms y(x)
Dy = diff(y);

ode = diff(y,x,2)+3*diff(y,x)+2*y==5;
cond1 = y(0) == 1;
cond2 = Dy(0) == 1;

conds = [cond1 cond2];
ySol(x) = dsolve(ode,conds);
ySol = simplify(dsolve(ode,conds))
