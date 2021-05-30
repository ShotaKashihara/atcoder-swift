// C - Ringo's Favorite Numbers 2
// https://atcoder.jp/contests/abc200/tasks/abc200_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! % 200 }
var c = [Int](repeating: 0, count: 200000)

for a in A {
    c[a] += 1
}

var cnt = 0

for i in 0..<N {
    cnt += c[A[i]]
}

print((cnt - N) / 2)
