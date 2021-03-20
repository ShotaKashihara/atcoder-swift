// A - Difference Max
// https://atcoder.jp/contests/abc196/tasks/abc196_a
// 実行制限時間: 2.0 sec
import Foundation

let (a, b): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let (c, d): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

print(max(a, b) - min(c, d))
