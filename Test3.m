clc;

% Calculate equation of motion for free fall
syms m x(t) y(t) g

T = m*(diff(x,t).^2+diff(y,t).^2)/2
U = m*g*y
Eq1 = AutoSolveSystem(T,U,t,x)
Eq2 = AutoSolveSystem(T,U,t,y)
latex(Eq1)
latex(Eq2)