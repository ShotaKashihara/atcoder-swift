// C - Swappable
// https://atcoder.jp/contests/abc206/tasks/abc206_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
var B = [Int:Int]()
var ans = 0
for a in A.enumerated() {
    ans += a.offset - B[a.element, default: 0]
    B[a.element, default: 0] += 1
}
print(ans)
