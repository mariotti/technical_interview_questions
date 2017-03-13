#From: http://stackoverflow.com/questions/2553522/interview-question-check-if-one-string-is-a-rotation-of-other-string
# Answer from: comunity wiki
# a litteral copy
# Just a java started
#
#algorithm checkRotation(string s1, string s2) 
#  if( len(s1) != len(s2))
#    return false
#  if( substring(s2,concat(s1,s1))
#    return true
#  return false
#end
#

boolean isRotation(String s1,String s2) {
    return (s1.length() == s2.length()) && ((s1+s1).indexOf(s2) != -1);
}

