// C - Kaprekar Number
// https://atcoder.jp/contests/abc192/tasks/abc192_c
import Foundation

let (n, k): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

func solve(x: Int) -> Int {
    // 123 -> [1, 2, 3] -> ["1", "2", "3"] -> "123"
    let g1 = x.digits.sorted(by: { $0 > $1 }).map(String.init).joined()
    let g2 = x.digits.sorted().map(String.init).joined()
    return Int(g1)! - Int(g2)!
}

extension Int {
    // 123 -> [1, 2, 3]
    var digits: [Int] { Array(String(self)).map { Int(String($0))! } }
}

var ans = n
for i in (0..<k) {
    ans = solve(x: ans)
}
print(ans)
