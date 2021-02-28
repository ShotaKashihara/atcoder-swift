
infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

// C - Unexpressed
// https://atcoder.jp/contests/abc193/tasks/abc193_c
import Foundation

let N = Int(readLine()!)!

/// `N = a ** b` で `b > 1` なので `a` は 2...10**5 まででOK
var s = Set<Int>()
(2...(10**5)).forEach { a in
    var x = a*a
    while x <= N {
        s.insert(x)
        x *= a
    }
}
print(N - s.count)
