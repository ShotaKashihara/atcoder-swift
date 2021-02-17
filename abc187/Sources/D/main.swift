// D - Choose Me
// https://atcoder.jp/contests/abc187/tasks/abc187_d
import Foundation

let n = Int(readLine()!)!
let ab = (0..<n-1).map { _ in readLine()! }.map { s -> (Int, Int) in
    let l = s.components(separatedBy: " "); return (Int(l[0])!, Int(l[1])!)
}

let score = ab.map { 2 * $0.0 + $0.1 }
let rank = score.enumerated().sorted(by: { $0.element > $1.element })
var hyousa = ab.reduce(0) { (res, r) -> Int in
    res + r.0
}
var count = 0
while hyousa >= 0 {
    hyousa -= rank[count].element
    count += 1
}

print(count)
