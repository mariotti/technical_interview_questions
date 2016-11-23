# Fabio Mariotti <fab.mariotti@gmail.com> - Copyright: Most recent GPL
#
listA = [3, 4, 5, 6, 7, 8, 9, 0, 1, 2]
listB = [7, 8, 9, 0, 1, 2, 3, 4, 5, 6]
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
        print listA[spos:]
        print listB[0:len(la)-spos]
        print listA[:spos]
        print listB[len(la)-spos:]

        if (listA[spos:] == listB[0:len(la)-spos]):
            print "First part true"
        if (listA[:spos] == listB[len(la)-spos:]):
            print "Second part true"

    if (listA[spos:] == listB[0:len(la)-spos] and listA[:spos] == listB[len(la)-spos:]):
        return True
    else:
        return False
    
if __name__ == "__main__":
    print "A list:", listA
    print "B list:", listB

    print isRotated(listA, listB)
