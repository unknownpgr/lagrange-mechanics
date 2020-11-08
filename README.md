# Automatic System Analysis with Lagrangian Mechanics

This repository is for my blog post about Lagrange mechanics. For more details, please visit my [blog post](https://unknownpgr.github.io/posts/lagrangian-1). (written in Korean)

I wrote a [MATLAB user-defined function](AutoSolveSystem.m) that solves physical system with Lagrangian mechanics. This function automatically calculates the equation of motion from the kinetic and potential energy of the given system. What you only should do to analyze the motion of system is to describe the system by calculating its kinetic and potential energy. Below are some examples of equations of motion automatically calculated from this script.

> GitHub does not seems to support the LaTeX grammar. Please use [online latex renderer](https://quicklatex.com/) to see readable formula.

# Examples

Below are the equations of motion of the system automatically calculated by this script. The inputs of the script were only the definition of potential energy and kinetic energy of the system.

## [Elastic Pendulum](test_elastic_pendulum.m)

$$
\frac{\partial ^2}{\partial t^2} \theta \left(t\right)=-\frac{2\,\frac{\partial }{\partial t} \theta \left(t\right)\,\frac{\partial }{\partial t} r\left(t\right)+g\,\sin\left(\theta \left(t\right)\right)}{l+r\left(t\right)}\\\frac{\partial ^2}{\partial t^2} r\left(t\right)=g\,\cos\left(\theta \left(t\right)\right)+r\left(t\right)\,{\left(\frac{\partial }{\partial t} \theta \left(t\right)\right)}^2+l\,{\left(\frac{\partial }{\partial t} \theta \left(t\right)\right)}^2-\frac{k\,r\left(t\right)}{m}
$$

I made a physics simulation of this example. Please visit [here](https://unknownpgr.github.io/lagrangian-mechanics/sim.html).

## [Double Pendulum](test_double_pendulum.m)

$$
\frac{\partial ^2}{\partial t^2} t_{2}\left(t\right)=\frac{g\,\sin\left(t_{2}\left(t\right)\right)}{r_{2}}+\frac{r_{1}\,\sin\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,{\left(\frac{\partial }{\partial t} t_{1}\left(t\right)\right)}^2}{r_{2}}-\frac{r_{1}\,\cos\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,\frac{\partial ^2}{\partial t^2} t_{1}\left(t\right)}{r_{2}}\\
\frac{\partial ^2}{\partial t^2} t_{1}\left(t\right)=\frac{g\,\sin\left(t_{1}\left(t\right)\right)}{r_{1}}-\frac{m_{2}\,r_{2}\,\cos\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,\frac{\partial ^2}{\partial t^2} t_{2}\left(t\right)+m_{2}\,r_{2}\,\sin\left(t_{1}\left(t\right)-t_{2}\left(t\right)\right)\,{\left(\frac{\partial }{\partial t} t_{2}\left(t\right)\right)}^2}{r_{1}\,\left(m_{1}+m_{2}\right)}
$$

## [Freefall](test_freefall.m)

$$
\frac{\partial ^2}{\partial t^2} x\left(t\right)=0\\
\frac{\partial ^2}{\partial t^2} y\left(t\right)=-g
$$

## [Bounce in 2D Potential Wall](test_bounce.m)

$$
\frac{\partial ^2}{\partial t^2} x\left(t\right)=-\frac{2\,b\,\mathrm{sinh}\left(b\,x\left(t\right)\right)\,{\mathrm{e}}^{-0.5000\,b\,w}}{m}\\
\frac{\partial ^2}{\partial t^2} y\left(t\right)=\frac{b\,{\mathrm{e}}^{-b\,y\left(t\right)}}{m}-g
$$
# Simulation Results

Below are some simulation results of elastic pendulum(`sim.html`). By adjusting the simulation parameters, you can get some beautiful image like this.

![download (8)](download (8)-1604843145992.png)

```
Parameters : 
g=9.82
m=10
k=2.0912
l=800
r_=10
r=200
theta=1
theta_=0
dt=0.0001
skip_frame=307
mode_track=0
```



![download (3)](download (3)-1604843145994.png)

```
I forgot the parameters of this simulation.
```
