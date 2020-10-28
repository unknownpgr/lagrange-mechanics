% The goal of this function is to automatically calculate the equation of
% motion of given system.
% The parameters are the kinetic energy T, the potential energy U, set of
% the generalized coordinates, and the time t.
% The return value is set of the equations corresponding to the generalized
% coordinates.
% The generalized coordinates must be function of t.

function solution = AutoSolveSystem(T,U,t,q)

% First, calculate Lagrangian.
L = T - U;

% Second, by using substitution, calculate Euler-Lagrange equation.
syms qt q_t
% Substitute function to variable
L_ = subs(L,diff(q,t),q_t);
L_ = subs(L_,q,qt);

% Calculate function by function differential
T1 = diff(L_,qt);
T2 = diff(L_,q_t);

% backsubstitute variable to function
T1 = subs(T1,q_t,diff(q,t));
T1 = subs(T1,qt,q);
T2 = subs(T2,q_t,diff(q,t));
T2 = subs(T2,qt,q);

% Calculate function by scalar differential
T2 = diff(T2,t);

% Get Euler-Lagrange equation.
EL = T1 - T2 == 0;

% Simplify the equation
EL = simplify(EL,'Steps',100);

% Solve for second derivative
syms q__
EL = subs(EL,diff(q,t,t),q__);
EL = solve(EL,q__);
EL = simplify(EL,'Steps',100);

% Return the result
solution = diff(q,t,t)==EL;
end