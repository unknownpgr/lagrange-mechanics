clc;

% Calculate equation of motion for double pendulum
% Actually, I can't sure this answer is correct.
syms t1(t) t2(t) r1 r2 m1 m2 g

x1 = r1*sin(t1)
y1 = -r1*cos(t1)
x2 = x1+r2*sin(t2)
y2 = y1-r2*cos(t2)

T = (m1*(diff(x1,t).^2+diff(y1,t).^2)+m2*(diff(x2,t).^2+diff(y2,t).^2))/2
U = -g*(m1*y1+m2*y2)
Eq1 = AutoSolveSystem(T,U,t,t1)
Eq2 = AutoSolveSystem(T,U,t,t2)
latex(Eq1)
latex(Eq2)

% According to matlab calculation, I got :
% diff(t2(t), t, t) == (g*sin(t2(t)))/r2 + (r1*sin(t1(t) - t2(t))*diff(t1(t), t)^2)/r2 - (r1*cos(t1(t) - t2(t))*diff(t1(t), t, t))/r2
% diff(t1(t), t, t) == (g*sin(t1(t)))/r1 - (m2*r2*cos(t1(t) - t2(t))*diff(t2(t), t, t) + m2*r2*sin(t1(t) - t2(t))*diff(t2(t), t)^2)/(r1*(m1 + m2))