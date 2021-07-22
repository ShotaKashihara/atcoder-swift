// C - Colorful Candies
// https://atcoder.jp/contests/abc210/tasks/abc210_c
// 実行制限時間: 2.0 sec
import Foundation

let (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let C = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

var bag = [Int: Int].init()

for i in 0 ..< K {
    bag[C[i], default: 0] += 1
}

var ans = Set(C[0..<K]).count
var current = ans

for i in K ..< N {
    if C[i-K] == C[i] {
        continue
    }
    var mark = 0
    // case ans += 1:
    if bag[C[i-K], default: 0] <= 1 {
        mark -= 1
    }
    // case ans -= 1:
    if bag[C[i], default: 0] == 0 {
        mark += 1
    }

    current += mark
    ans = max(current, ans)
    bag[C[i-K], default: 0] -= 1
    bag[C[i], default: 0] += 1
}
print(ans)
