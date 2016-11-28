# Bare Question

Find the most frequent integer in an array

# Discussion

## Questions

 - What if there is more then one answer? If few integers have the same highest frequency.
 - How to report the results?

# Algorithms

## Accumulate frequency count

 The first algorithm simply sets up independent "counters" for each number, then it search
 for the max value within the counters.

 Pros: The data can be reused and inspected. For example checking same ranking or lower
 ranking.

 Cons: It has to be stored in memory to be useful. 

### Python Solution

It can be implemented as a dictionary, which is the straight forward solution in python.
Namely Key/Values pairs for the sake of the algorithm.

## Sort and count

This algorithm is fully based on sorting. It is useful if the data are already "almost"
 sorted. Once the data are sorted it simply counts the data repetition and gives the highest
 number found.

 Pros: Fast on sorted or almost sorted data. Can be modified to get the second or third result.
       It uses no memory except for the sorting.

 Cons: it has no history of the data and results. 

### Python Solution

### Shell Solution

# Real Case examples

## Find the most viewed movie
 [mariotti] I had a similar case in the analysis of movielens data. The solution was similar
 to the sorting and counting algorithm. This was for data analysis and not for production.
 