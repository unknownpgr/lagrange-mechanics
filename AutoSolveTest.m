clc;

% Calculate equation of motion for pendulum with spring
syms theta(t) r(t) l m g k
T = m*(((l+r)*diff(theta,t)).^2+diff(r,t).^2)/2
U = -m*g*(l+r)*cos(theta) + k*r.^2/2
Eq2 = AutoSolveSystem(T,U,t,r)
Eq1 = AutoSolveSystem(T,U,t,theta)
latex(Eq1)
latex(Eq2)