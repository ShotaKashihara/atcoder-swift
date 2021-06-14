// A - kcal
// https://atcoder.jp/contests/abc205/tasks/abc205_a
// 実行制限時間: 2.0 sec
import Foundation

let (A, B): (Double, Double) = { let line = readLine()!.split(separator: " ").map(String.init); return (Double(line[0])!, Double(line[1])!) }()

print(A/100*B)
