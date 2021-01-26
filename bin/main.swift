import Foundation

 /* Function print Nth rows of binomial coeffents*/
 func row(_ k:Int, _ i:Int, _ c:Int, _ out:String) ->  String
 {
    if k>i {return out;}
    return row(k+1, i, c * (i-k)/(k+1), out + "\(c), ")
 }
func col(_ n:Int, _ i:Int) -> Int
 {
    if i == n {return 0;}
    let out = row(0, i, 1, "")
    print(out);
    return col(n,i+1);
 }
func main() {
  let N = 10

  print("[INPUT] \(N)");
  print("[OUTPUT] ");
  col(N,0);
}

main()
