### Introduction

This is my implementation of the second assignment. I've made it in two versions:

1. The "suggested" one, available in the file "cachematrix.R"
2. an "enhanced" one, available in the file "bettercachematrix.R"

### The better cache matrix

Why the "cacheMatrix" object should be mutable, i.e.: why should I be able to 
modify the matrix it wraps? That's a source of confusion. Further, once we
have the base matrix "x", we have all that we need for evaluating the inverse:
we can simply make the "get.inverse" method t oreturn the cached value, or compute
it if it's still missing.

 I've add a "clear" method for throwing away the cached result, just in case we want
 to perform and cache the inverse with different parameters.
 