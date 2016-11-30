#caltonji 10/31/2015
#
import random

lista = [0, 1, 3, 2, 23, 43, 2, 1, 5, 2, 5, 2, 56, 23, 0, -1, 2, 2]
listb = [4, 0, 1, 0, 4, 4, 4, 4, 0, 1, 1, 1,-6, 7]
listc = [3, 5, 10, 3, 5, 1, 5, 3, 2, 3, 8, 4, 5, 1, 2, 7, 4, 6, 5, 8, 1, 1, 7, 10, 4, 5, 10, 5, 9, 1, 2, 10, 3, 9, 5, 10, 6, 10, 10, 8, 7, 2, 10, 7, 8, 10, 10, 7, 5, 10]
def mostFrequent(nums):
    freq = {}
    for i in nums:
        if i in freq:
            freq[i] += 1
        else:
            freq[i] = 0
    maxKey = None
    maxVal = 0
    for key, value in freq.iteritems():
        if value > maxVal:
            maxVal = value
            maxKey = key
    return maxKey

def mostFrequentV02(nums):
    """
    Maybe more pythonic, just an alternative. Indeed it runs on a single loop,
    But with the sort addition. It might compete on different vector sizes.
    As the above, it doesn't handle multiple max values: it gets the first it finds.
    """
    
    nums.sort()

    maxFreq  = 1
    mostFreq = nums[0]
    prevFreq = 1
    cFreq    = 1
    pInt = nums[0]
    nums = nums[1:]
    for i in nums:
        if i == pInt:
            cFreq+=1
        else:
            if cFreq > maxFreq:
                maxFreq = cFreq
                mostFreq = pInt
            prevFreq=cFreq
            pInt = i
            cFreq = 0
            
    if cFreq > maxFreq:
        maxFreq = cFreq #not required, just consistency for the future: if to return the freq
        mostFreq = pInt
            
    return mostFreq
    
if __name__ == "__main__":

    dostress = False
    print "A list:", lista
    print "B list:", listb
    print "C list:", listc
    print "Most Frequent for a V0: " +  str(mostFrequent(lista))
    print "Most Frequent for b V0: " +  str(mostFrequent(listb))
    print "Most Frequent for c V0: " +  str(mostFrequent(listc))
    print "Most Frequent for a V1: " +  str(mostFrequentV02(lista))
    print "Most Frequent for b V1: " +  str(mostFrequentV02(listb))
    print "Most Frequent for c V1: " +  str(mostFrequentV02(listc))

    print "C list Sorted:", listc

    listr = []
    if (dostress):
        listr = my_randoms=[random.randrange(1,11,1) for _ in range (50000000)] #takes few minutes
    else:
        listr = my_randoms=[random.randrange(1,11,1) for _ in range (500)]
        print "R list:", listr
        
    print "Most Frequent for r V0: " +  str(mostFrequent(listr))
    print "Most Frequent for r V1: " +  str(mostFrequentV02(listr))


# http://stackoverflow.com/questions/1602934/check-if-a-given-key-already-exists-in-a-dictionary`
