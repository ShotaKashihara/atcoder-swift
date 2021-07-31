// B - Cycle Hit
// https://atcoder.jp/contests/abc211/tasks/abc211_b
// 実行制限時間: 2.0 sec
import Foundation

let S = (0..<4).map { _ in readLine()! }
print(Set(S).count == 4 ? "Yes" : "No")
