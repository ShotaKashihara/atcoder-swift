// A - Repression
// https://atcoder.jp/contests/abc207/tasks/abc207_a
// 実行制限時間: 2.0 sec
import Foundation
var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
A.sort()
print(A[1] + A[2])
