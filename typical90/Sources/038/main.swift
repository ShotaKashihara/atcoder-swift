// 038 - Large LCM（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_al
// 実行制限時間: 2.0 sec
import Foundation

/// 2つの最大公約数
func gcd(a: Int, b: Int) -> Int {
    return b == 0 ? a : gcd(a: b, b: a % b)
}
/// 3つ以上の最大公約数
func gcd(c: [Int]) -> Int {
    c.reduce(0, { gcd(a: $0, b: $1) })
}

let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

let r = B / gcd(a: A, b: B)
//let a = A * B / gcd(a: A, b: B)
//print(a > 10**18 ? "Large" : "\(a)")

if r > 10**18 / A {
    print("Large")
} else {
    print(r*A)
}
