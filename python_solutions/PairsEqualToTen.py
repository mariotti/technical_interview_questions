#caltonji 10/31/2015

import timeit
import time
import random

def pairsEqualToK(nums, k):
    tupleList = []
    for i in nums:
        if (k - i) in nums:
            tupleList.append((k-i, i))
    return tupleList

def moreEfficient(nums, k):
    tupleList = []
    hashMap = {}
    for i, num in enumerate(nums):
        if not num in hashMap:
            hashMap[num] = i
    for i, num in enumerate(nums):
        if (k - num) in hashMap:
            if ( not hashMap[k-num] == -1 and not hashMap[k-num] == i ):
                hashMap[num] = -1
                tupleList.append((k-i, i))
    return tupleList

testa = [2,3,2,-1, 11, 7]
testb = [2, 5, 3,2,-1, 5, 11, 7]
testc = [3, 5, 10, 3, 5, 1, 5, 3, 2, 3, 8, 4, 5, 1, 2, 7, 4, 6, 5, 8, 1, 1, 7, 10, 4, 5, 10, 5, 9, 1, 2, 10, 3, 9, 5, 10, 6, 10, 10, 8, 7, 2, 10, 7, 8, 10, 10, 7, 5, 10]

if __name__ == "__main__":

    testr = my_randoms=[random.randrange(1,11,1) for _ in range (20)]
    dataset = [testa, testb, testc, testr]
    algset = [pairsEqualToK, moreEfficient]

    t0 = time.time()
    di = 0
    for data in dataset:
        di += 1
        dataname = "D"+str(di)
        print dataname, data
        ai = 0
        for alg in algset:
            ai += 1
            algname = "A"+str(ai)
            print "timeit", timeit.timeit('alg(data, 10)','from __main__ import alg, data', number=10)
            ts = time.time()
            print "--  Res:", dataname, algname, alg(data, 10)
            alg(data, 10)
            te = time.time()
            print "--", "Time:", dataname, algname, te-ts



    

