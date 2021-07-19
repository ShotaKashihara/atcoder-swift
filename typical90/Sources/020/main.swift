// 020 - Log Inequality（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_t
// 実行制限時間: 2.0 sec
import Foundation

let (a, b, c): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

print(a < c ** b ? "Yes" : "No")
