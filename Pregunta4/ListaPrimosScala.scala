object Primos {

  def lPrimos(x:Int):Unit={
        
      int c = 1;
      int p = 2;
      int d = 2;
      while (c <= x) {
         if (p % d == 0) {
            if (p == d) {
               System.out.print(p + ", ");
               c++;
            }
            d = 2;
            p++;
         }
         else
            d++;
      }
  }
  
  def main(args:Array[String]):Unit = { 
    println("Introduce un numero: ")
    val num = scala.io.StdIn.readInt()
	  
    println("Lista de primos: ")
    lPrimos(num)
  }
  
}