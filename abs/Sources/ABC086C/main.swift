// ABC086C - Traveling
// https://atcoder.jp/contests/abs/tasks/arc089_a
// 実行制限時間: 2.0 sec
import Foundation

func solve(_ N: Int, _ t: [Int], _ x: [Int], _ y: [Int]) {
    // Write code here!
}

// =========================

let N = Int(readLine()!)!
var t: [Int] = .init(repeating: 0, count: N)
var x: [Int] = .init(repeating: 0, count: N)
var y: [Int] = .init(repeating: 0, count: N)

for i in 0..<N {
    let (_t, _x, _y): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()
    t[i] = _t
    x[i] = _x
    y[i] = _y
}

solve(N, t, x, y)
