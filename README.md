# Exercise 1
We'll be finding the roots of the function *f*(*x*) = *x*/2 - sin(*x*) + π/6 - √(3)/2, *x* ∈ [-π/2, π].  
After plotting the function, we see that it has two roots, one of which is a stationary point.

**(a)** First we apply the bisection method. We can only use this for one of the roots, as the other is stationary as stated above.

**(b)** Then we use Newton's method to calculate both roots, and examine the convergence rate for each one.

**(c)** Lastly, we apply a modified Newton's method in the form of a fixed point iteration, to see if we can speed up convergence.

# Exercise 2
This time, we're finding the root of *f*(*x*) = *x* + *e*<sup>-20*x*<sup>2</sup></sup>cos(*x*), *x* ∈ (-1, 1).

**(a)** First we try Newton's method.

**(b)** We now examine the results found in **(a)**.

**(c)** Finally, we'll use the bisection method, over [-1, 1], to find a suitable starting point that we can use for Newton's method.

# Concepts
Here are some brief explanations of the concepts used in these exercises.

### Roots
The roots of a (continuous) function *f* are all the points *x* such that *f*(*x*) = 0.

### Tolerance
The algorithms below are iterative, that is, once we plug our starting point *x*<sub>0</sub> into the algorithm, it will output our next point *x*<sub>1</sub>. We then plug in *x*<sub>1</sub> to obtain *x*<sub>2</sub>, and so on. The idea is that after each iteration, *x*<sub>*n*+1</sub> gets closer to the root. But how do we know when to stop?

There are several ways to decide when to stop. One of the simpler ways is: once we arrive at an *x*<sub>*n*+1</sub> such that |*x*<sub>*n*+1</sub> - *x*<sub>*n*</sub>| < *tol*, we stop iterating and take *x*<sub>*n*+1</sub> to be our approximation for the root. Of course, if we find the exact root before hitting the tolerance level, then we can stop iterating early.

### Bisection method
The bisection method starts with choosing an interval [*a*, *b*] such that *f*(*a*) and *f*(*b*) have opposite signs. This ensures that there exists a root in the interval.

Essentially, we
- split the interval in two
- let the mid point become our new *x*<sub>*n*+1</sub>
- keep the half that contains the root, and repeat

### Newton's method
Newton's method says that given a sufficient function *f*, and a sufficiently good initial guess *x*<sub>0</sub>,
- *x*<sub>*n*+1</sub> = *x*<sub>*n*</sub> - *f*(*x*<sub>*n*</sub>)/*f'*(*x*<sub>*n*</sub>)

### Fixed point iteration
A fixed point *x* of a function *ϕ* is a point such that *ϕ*(*x*) = *x*.

Suppose we rewrite the problem *f*(*x*) = 0 as *x* = *ϕ*(*x*), where *f*(*x*) = 0 ⇔ *x* = *ϕ*(*x*).  
Solving *f*(*x*) = 0 is then equivalent to finding the fixed points of *ϕ*.

The iteration becomes
- *x*<sub>*n*+1</sub> = *ϕ*(*x*<sub>*n*</sub>)
