// A - Cabbages
// https://atcoder.jp/contests/abc210/tasks/abc210_a
// 実行制限時間: 2.0 sec
import Foundation

var (N, A, X, Y): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()

var x = min(A, N) * X
var y = max(0, N - A) * Y

print(x + y)
