// D - Journey
// https://atcoder.jp/contests/abc194/tasks/abc194_d
import Foundation

let N = Int(readLine()!)!

//var ans = 1.0
//for i in 1..<N {
//    ans *= Double(N)
//    ans /= Double(i)
//}
//print(ans)

//var ans = NSDecimalNumber.init(string: "1.0")
//for i in 1..<N {
//    ans = ans.multiplying(by: .init(value: N))
//    ans = ans.dividing(by: .init(value: i))
//}
//print(ans)

let modulus: UInt = 998244353

var ans = 1.0
for i in 1..<N {
    ans += Double(N)
    ans /= Double(i)
}
print(ans)
