/*
# This is almost a copy paste from:
# http://stackoverflow.com/questions/13878104/finding-the-most-frequent-common-element-in-a-collection
# which is in principle under the MIT licence, See for example the discussion here:
# https://meta.stackexchange.com/questions/271080/the-mit-license-clarity-on-using-code-on-stack-overflow-and-stack-exchange
#
*/
object MostFrequentInt extends App {
val lista = List(0, 1, 3, 2, 23, 43, 2, 1, 5, 2, 5, 2, 56, 23, 0, -1, 2, 2)
val listb = List(4, 0, 1, 0, 4, 4, 4, 4, 0, 1, 1, 1,-6, 7)
val listc = List(3, 5, 10, 3, 5, 1, 5, 3, 2, 3, 8, 4, 5, 1, 2, 7, 4, 6, 5, 8, 1, 1, 7, 10, 4, 5, 10, 5, 9, 1, 2, 10, 3, 9, 5, 10, 6, 10, 10, 8, 7, 2, 10, 7, 8, 10, 10, 7, 5, 10)
  println("Start")
  println(lista.groupBy(identity).maxBy(_._2.size)._1)
  println(listb.groupBy(identity).maxBy(_._2.size)._1)
  println(listc.groupBy(identity).maxBy(_._2.size)._1)
}

/*
As I am new to scala, to understand the code above... if you know python and/or java and/or perl...
groupBy returns a Map (hashkey, dictionary, or similar) like:

scala> lista.groupBy(identity)
res3: scala.collection.immutable.Map[Int,List[Int]] = Map(0 -> List(0, 0), 5 -> List(5, 5), 56 -> List(56), 1 -> List(1, 1), 2 -> List(2, 2, 2, 2, 2, 2), 3 -> List(3), -1 -> List(-1), 43 -> List(43), 23 -> List(23, 23))

MaxBy argument means: _ get the coming objects (the Map),
                      _._2 use the second argument (the List),
		      _._2.size of it consider the size and find the max.


The REPL seems to be one of the nice things of scala ;)

*/