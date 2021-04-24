// B - Intersection
// https://atcoder.jp/contests/abc199/tasks/abc199_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let B = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var ans = 0

for x in 1...1000 {
    var res = true
    for i in 0..<N {
        if !(A[i] <= x && x <= B[i]) {
            res = false
            break
        }
    }
    if res {
        ans += 1
    }
}

print(ans)
