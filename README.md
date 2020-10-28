# Automatic System Analysis with Lagrangian Mechanics

This repository is for my blog post about Lagrange mechanics. For more details, please visit my [blog post](https://unknownpgr.github.io/posts/lagrangian-1). (written in Korean)

I wrote a [MATLAB user-defined function](AutoSolveSystem.m) that solves physical system with Lagrangian mechanics. This function automatically calculates the equation of motion from the kinetic and potential energy of the given system. What you only should do to analyze the motion of system is to describe the system by calculating its kinetic and potential energy. Below are some examples of equations of motion automatically calculated from this script.

> GitHub does not seems to support the LaTeX grammar. Please use [online latex renderer](https://quicklatex.com/) to see readable formula.

## [Elastic Pendulum](Test1.m)

$$
\frac{\partial ^2}{\partial t^2} \theta \left(t\right)=-\frac{2\,\frac{\partial }{\partial t} \theta \left(t\right)\,\frac{\partial }{\partial t} r\left(t\right)+g\,\sin\left(\theta \left(t\right)\right)}{l+r\left(t\right)}\\\frac{\partial ^2}{\partial t^2} r\left(t\right)=g\,\cos\left(\theta \left(t\right)\right)+r\left(t\right)\,{\left(\frac{\partial }{\partial t} \theta \left(t\right)\right)}^2+l\,{\left(\frac{\partial }{\partial t} \theta \left(t\right)\right)}^2-\frac{k\,r\left(t\right)}{m}
$$

I made a physics simulation of this example. Please visit [here](https://unknownpgr.github.io/lagrangian-mechanics/sim.html).

## [Double Pendulum](Test2.m)

$$
\frac{\partial ^2}{\partial t^2} t_{2}\left(t\right)=\frac{g\,\sin\left(t_{2}\left(t\right)\right)}{r_{2}}+\frac{r_{1}\,\sin\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,{\left(\frac{\partial }{\partial t} t_{1}\left(t\right)\right)}^2}{r_{2}}-\frac{r_{1}\,\cos\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,\frac{\partial ^2}{\partial t^2} t_{1}\left(t\right)}{r_{2}}\\
\frac{\partial ^2}{\partial t^2} t_{1}\left(t\right)=\frac{g\,\sin\left(t_{1}\left(t\right)\right)}{r_{1}}-\frac{m_{2}\,r_{2}\,\cos\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,\frac{\partial ^2}{\partial t^2} t_{2}\left(t\right)+m_{2}\,r_{2}\,\sin\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,{\left(\frac{\partial }{\partial t} t_{2}\left(t\right)\right)}^2}{r_{1}\,\left(m_{1}+m_{2}\right)}
$$

## [Free Fall](Test3.m)

$$
\frac{\partial ^2}{\partial t^2} x\left(t\right)=0\\
\frac{\partial ^2}{\partial t^2} y\left(t\right)=-g
$$

