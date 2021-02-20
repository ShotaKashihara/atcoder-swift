// D - Sum of difference
// https://atcoder.jp/contests/abc186/tasks/abc186_d
import Foundation


let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }.sorted()

var ans = 0
var sum = 0
for i in (0..<n) {
    ans += a[i]*i
    ans -= sum
    sum += a[i]
}
print(ans)
