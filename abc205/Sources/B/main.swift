// B - Permutation Check
// https://atcoder.jp/contests/abc205/tasks/abc205_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
print(Set.init(A).count == A.count ? "Yes" : "No")
