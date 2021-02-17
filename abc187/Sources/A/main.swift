// A - Large Digits
// https://atcoder.jp/contests/abc187/tasks/abc187_a
import Foundation

let (a, b): (Int, Int) = { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!) }()

let aa = a.digits.reduce(0, +)
let bb = b.digits.reduce(0, +)
print(max(aa, bb))

extension Int {
    // 123 -> [1, 2, 3]
    var digits: [Int] { Array(String(self)).map { Int(String($0))! } }
}
