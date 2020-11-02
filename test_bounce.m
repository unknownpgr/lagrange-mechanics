clc;

% Calculate equation of motion for 2D potential wall.
syms m x(t) y(t) g b w

T = m*(diff(x,t).^2+diff(y,t).^2)/2
U = m*g*y + exp(b*(x-w/2)) + exp(-b*(x+w/2)) + exp(-b*y);
Eq1 = AutoSolveSystem(T,U,t,x)
Eq2 = AutoSolveSystem(T,U,t,y)
latex(Eq1)
latex(Eq2)