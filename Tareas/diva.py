
import matplotlib.pyplot as plt
import numpy as np


h=0.005
tMin = 0.0
tMax = 0.791
N = int((tMax - tMin)/h)


a =  0.24250109
b = -0.0607718825
c =  0.93240737
d =  0.86473146
G =  1


m = 1


t = np.zeros((N,3),dtype=np.complex)
p = np.zeros((N,3),dtype=np.complex)
r = np.zeros((N,3),dtype=np.complex)


t[0] = [tMin,tMin,tMin]
p[0] = m*np.array([c+d*1j,
                   c+d*1j,
                  -2*c - d*2j])

r[0] = np.array([a + b*1j,
                -a - b*1j,
                 0 + 0*1j])


def p_prime(r_t):
    r31 = r_t-np.roll(r_t,1)
    r32 = r_t-np.roll(r_t,2)
    return -G*m*m*(r31/(np.abs(r31)**3)+r32/(np.abs(r32)**3))


def r_prime(p_t):
    return p_t/m

def func_prime(r_t,p_t):
    return r_prime(p_t),p_prime(r_t)




for i in range(1,N):

    k1 = func_prime(r[i-1],p[i-1])


    t1 = t[i-1] + (h/2.0)
    r1 = r[i-1] + (h/2.0) * k1[0]
    p1 = p[i-1] + (h/2.0) * k1[1]
    k2 = func_prime(r1, p1)


    t2 = t[i-1] + (h/2.0)
    r2 = r[i-1] + (h/2.0) * k2[0]
    p2 = p[i-1] + (h/2.0) * k2[1]
    k3 = func_prime(r2, p2)


    t3 = t[i-1] + h
    r3 = r[i-1] + h * k3[0]
    p3 = p[i-1] + h * k3[1]
    k4 = func_prime(r3, p3)


    average_kr = (1.0/6.0)*(k1[0] + 2.0*k2[0] + 2.0*k3[0] + k4[0])
    average_kp = (1.0/6.0)*(k1[1] + 2.0*k2[1] + 2.0*k3[1] + k4[1])

    t[i] = t[i-1] + h
    r[i] = r[i-1] + h * average_kr
    p[i] = p[i-1] + h * average_kp

import matplotlib.animation as animation

fig = plt.figure()
ax=fig.add_subplot(111)
colors= ['c','m','r']

def anim(t):
    d=t-20
    ax.cla()
    ax.set_xlim([-0.3,0.3])
    ax.set_ylim([-0.1,0.1])
    for i in range(3):
        ax.plot(np.real(r[d:t+1,i]), np.imag(r[d:t+1,i]),colors[i],alpha=0.4, lw=2)
        ax.plot(np.real(r[t,i]), np.imag(r[t,i]),colors[i]+'o')

ani=animation.FuncAnimation(fig, anim, frames=N )
ani.save('coreo.gif',fps=30, dpi=150, writer='imagemagick')
