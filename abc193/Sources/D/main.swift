// D - Poker
// https://atcoder.jp/contests/abc193/tasks/abc193_d
import Foundation

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

func score(_ a: [Int]) -> Int {
    var ans = 0
    for i in 1...9 {
        let count = a.filter { $0 == i }.count
        ans += i * 10 ** count
    }
    return ans
}

let K = Int(readLine()!)!
let S = readLine()!.dropLast().map(\.wholeNumberValue!)
let T = readLine()!.dropLast().map(\.wholeNumberValue!)

var count = [Int].init(repeating: K, count: 10)
count[0] = 0
for i in 1...9 {
    count[i] -= S.filter { $0 == i }.count
    count[i] -= T.filter { $0 == i }.count
}

extension Int {
    var d: Double {
        Double(self)
    }
}

var ans = 0.0

for i in 1...9 {
    for j in 1...9 {
        if score(S + [i]) > score(T + [j]) {
            if i == j {
                ans += count[i].d / count.reduce(0, +).d * (count[j] - 1).d / (count.reduce(0, +) - 1).d
            } else {
                ans += count[i].d / count.reduce(0, +).d * (count[j]).d / (count.reduce(0, +) - 1).d
            }
        }
    }
}

print(ans)
