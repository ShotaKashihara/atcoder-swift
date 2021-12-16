// B - log2(N)
// https://atcoder.jp/contests/abc215/tasks/abc215_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

for k in 1... {
    if 2 ** k > N {
        print(k-1)
        exit(0)
    }
}
