// B - Same Name
// https://atcoder.jp/contests/abc216/tasks/abc216_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

let ST = (0..<N).map { _ in readLine()! }

print(Set(ST).count == ST.count ? "No": "Yes")
