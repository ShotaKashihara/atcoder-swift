// C - Unlucky 7
// https://atcoder.jp/contests/abc186/tasks/abc186_c
import Foundation

let n = Int(readLine()!)!

extension Int {
    // 123 -> [1, 2, 3]
    var digits: [Int] { Array(String(self)).map { Int(String($0))! } }
}

var ans = 0
(1...n).forEach { i in
    let has7 = Set(i.digits).contains(7)
    let has7mod8 = Array(String(i, radix: 8)).map { Int(String($0))! }.contains(7)
    if has7 || has7mod8 {  } else {
        ans += 1
    }
}
print(ans)
