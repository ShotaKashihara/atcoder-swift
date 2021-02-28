// D - Stamp
// https://atcoder.jp/contests/abc185/tasks/abc185_d
import Foundation
let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let _A = readLine()!
let A: [Int] = [0] + _A.split(separator: " ").map(String.init).map { Int($0)! }.sorted() + [N+1]

infix operator /+: MultiplicationPrecedence // 切り上げ
func /+ (lhs: Int, rhs: Int) -> Int {
    lhs >= 0 ? (lhs + rhs - 1) / rhs : lhs / rhs
}

var k = Int.max
for i in 0..<A.count-1 {
    if A[i + 1] - A[i] > 1 {
        k = min(k, A[i + 1] - A[i] - 1)
    }
}

var stamp = 0
for i in 0..<A.count-1 {
    let d = A[i + 1] - A[i] - 1
    stamp += d /+ k
}

print(stamp)
