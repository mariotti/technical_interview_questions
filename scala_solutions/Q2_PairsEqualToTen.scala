/*
Adapted from the tutorial at:
http://docs.scala-lang.org/tutorials/tour/sequence-comprehensions.html
*/

object PairsEqualToTen extends App {
  val lista = List(0, 1, 3, 2, 23, 43, 2, 1, 5, 2, 5, 2, 56, 23, 0, -1, 2, 2)
  val listb = List(4, 0, 1, 0, 4, 4, 4, 4, 0, 1, 1, 1,-6, 7)
  val listc = List(3, 5, 10, 3, 5, 1, 5, 3, 2, 3, 8, 4, 5, 1, 2, 7, 4, 6, 5, 8, 1, 1, 7, 10, 4, 5, 10, 5, 9, 1, 2, 10, 3, 9, 5, 10, 6, 10, 10, 8, 7, 2, 10, 7, 8, 10, 10, 7, 5, 10)
  val listd = List(0, 1, 3, 2, 7, 43, 2, 1, 5, 2, 5, 2, 8, 23, 0, -1, 2, 2)
  val liste = List(0, 1, 3, 10, 9, 7, 5, 5)

def foo(lst: List[Int], v: Int) =
    for ((i, idx) <- lst.view.zipWithIndex;
         j <- lst.slice(idx+1, lst.size) if i + j == v) yield{
      //Console.println(i, j, idx, lst.slice(idx+1, lst.size))
      (i, j)
      }
      
  Console.println(lista)      
  foo(lista, 10) foreach {
    case (i, j) =>
      println(s"($i, $j)")
  }

  Console.println(listb)      
  foo(listb, 10) foreach {
    case (i, j) =>
      println(s"($i, $j)")
  }

  Console.println(listc)      
  foo(listc, 10) foreach {
    case (i, j) =>
      println(s"($i, $j)")
  }

  Console.println(listd)      
  foo(listd, 10) foreach {
    case (i, j) =>
      println(s"($i, $j)")
  }

  Console.println(liste)      
  foo(liste, 10) foreach {
    case (i, j) =>
      println(s"($i, $j)")
  }


}

