func sieveOfEratosthenes(num: Int) -> [Int]{
  var arr = [Bool](count: num+1, repeatedValue: true)
  arr[0] = false
  arr[1] = false
  for i in 2..<Int(sqrt(Double(num))){
    if arr[i] == true{
      for j in (i*i).stride(through: num, by: i){
        arr[j] = false
      }
    }
  }
  return arr.enumerate().filter({i,v in v == true}).map({i,v in i}
}
