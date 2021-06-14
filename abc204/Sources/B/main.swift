// B - Nuts
// https://atcoder.jp/contests/abc204/tasks/abc204_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var ans = 0
for a in A {
    if a > 9 {
        ans += a - 10
    }
}

print(ans)
