// A - Century
// https://atcoder.jp/contests/abc200/tasks/abc200_a
// 実行制限時間: 2.0 sec
import Foundation

infix operator /+: MultiplicationPrecedence // 切り上げ
func /+ (lhs: Int, rhs: Int) -> Int {
    lhs >= 0 ? (lhs + rhs - 1) / rhs : lhs / rhs
}

let N = Int(readLine()!)!
print(N /+ 100)
