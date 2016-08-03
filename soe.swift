func sieveOfEratosthenes(num: Int) -> [Int]{
var Arr = [Bool](count: num+1, repeatedValue: true)
Arr[0] = false
Arr[1] = false
for i in 2..<Int(sqrt(Double(num))){
if Arr[i] == true{
for j in (i*i).stride(through: num, by: i){
A[j] = false
}
}
}
return A.enumerate().filter({i,v in v == true}).map({i,v in i}
}
