### Bare Question

Write fibbonaci iteratively and recursively (bonus; use dynamic programming)

### Discussion

These are some discussions from the web. At present all in python, but the discusion is pretty general.

#### Jeremykun.com

[A Spoonful of Python and Dynamic Programming](https://jeremykun.com/2012/01/12/a-spoonful-of-python/)

A nice blog to read.

An extract

Fibonacci Numbers (the Wrong Way)

    def fib(n):
       if n <= 2:
          return 1
       else:
          return fib(n-1) + fib(n-2)

Recalling our first Python primer, we recognize that this is a very different kind of “for” loop. Indeed, this is a recursive loop, which achieves the looping idea by having a function call itself with different arguments.


With lists in our pocket, we can come up with a way to compute Fibonacci numbers quickly: we just save the old computations in a list (and do away with all that recursion nonsense).

    def fib(n):
       fibValues = [0,1]
       for i in range(2,n+1):
          fibValues.append(fibValues[i-1] + fibValues[i-2])
       return fibValues[n]

"Dynamic Programming"

This author likes to think of it as “the method you need when it’s easy to phrase a problem using multiple branches of recursion, but it ends up taking forever since you compute the same old crap way too many times.” According to Wikipedia, this means we have “overlapping sub-problems” which are just slightly smaller than the goal.

We can use a dictionary to save old computations in a function call, replacing the egregious extra computations by lightning fast dictionary look-ups. For our original Fibonacci problem, we can do this as follows:

    fibTable = {1:1, 2:1}
    def fib(n):
       if n <= 2:
          return 1
       if n in fibTable:
          return fibTable[n]
       else:
          fibTable[n] = fib(n-1) + fib(n-2)
          return fibTable[n]

#### Dynamic Programming - Fibonacci - Stackoverflow

[Dynamic Programming - Fibonacci](http://stackoverflow.com/questions/34055512/dynamic-programming-fibonacci)

Not so interesting.. no discussion

#### How to write the Fibonacci Sequence in Python - Stackoverflow

[How to write the Fibonacci Sequence in Python](http://stackoverflow.com/questions/494594/how-to-write-the-fibonacci-sequence-in-python?rq=1)

A longer discussion with interesting notes even past the accepted answer.

There are external links, which you probably know already if you got interested in the problem.

 - [Fibonacci_number - Wikipedia](https://en.wikipedia.org/wiki/Fibonacci_number)
 - [FibonacciNumber - Walfram](http://mathworld.wolfram.com/FibonacciNumber.html)

They suggest a "closed form":

    from math import sqrt
    def F(n):
        return ((1+sqrt(5))**n-(1-sqrt(5))**n)/(2**n*sqrt(5))

With references to the "golden ratio".


Also an "iterator" enhabled code:

    def F():
        a,b = 0,1
        yield a
        yield b
        while True:
            a, b = b, a + b
            yield b

And indeed.

Suppose now you wrote a f(n) that returns the n-th term of the Fibonacci Sequence (like the one with sqrt(5) )

In most languages you can do something like:


    def SubFib(startNumber, endNumber):
        n = 0
        cur = f(n)
        while cur <= endNumber:
            if startNumber <= cur:
                print cur
            n += 1
            cur = f(n)

In python I'd use the iterator form and go for:

    def SubFib(startNumber, endNumber):
        for cur in F():
            if cur > endNumber: return
            if cur >= startNumber:
                yield cur

    for i in SubFib(10, 200):
        print i


This was about the accepted answer, but the rest is not less intereseting.




### Algorithms


### Real Case examples

At present no real case reported.

 