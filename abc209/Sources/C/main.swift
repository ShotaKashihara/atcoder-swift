// C - Not Equal
// https://atcoder.jp/contests/abc209/tasks/abc209_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

let C = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var cnt = 0
var ans = 1
for c in C.sorted() {
    let a = c - cnt
    if a <= 0 {
        print(0)
        exit(0)
    }
    ans = (ans * a) % (1000000007)
    cnt += 1
}
print(ans)
