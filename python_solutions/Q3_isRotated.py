# Fabio Mariotti <fab.mariotti@gmail.com> - Copyright: Most recent GPL
#
listA = [3, 4, 5, 6, 7, 8, 9, 0, 1, 2]
listB = [7, 8, 9, 0, 1, 2, 3, 4, 5, 6]
#
A = [1,2,3,5,6,7,8]
B = [5,6,7,8,1,2,3]

C = [1,2,3]
D = [6,7,5,8,1,2,3]
#
def isRotated(la,lb):
    # This function will not work if duplicates are alowed
    # But can be used in principle also in this case
    # if you test each found index from lb[0]
    spos = la.index(lb[0])

    demo = False
    if (demo):
        if (len(la) != len(lb)):
            return False
        print spos
        print la[spos:]
        print lb[0:len(la)-spos]
        print la[:spos]
        print lb[len(la)-spos:]

        if (la[spos:] == lb[0:len(la)-spos]):
            print "First part true"
        if (la[:spos] == lb[len(la)-spos:]):
            print "Second part true"

    if (la[spos:] == lb[0:len(la)-spos] and la[:spos] == lb[len(la)-spos:]):
        return True
    else:
        return False
    
if __name__ == "__main__":
    print "A list:", listA
    print "B list:", listB

    print isRotated(listA, listB)
    print isRotated(A, B)
    print isRotated(B, C)
    print isRotated(B, D)
