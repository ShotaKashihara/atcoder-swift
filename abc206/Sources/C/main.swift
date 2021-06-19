// C - Swappable
// https://atcoder.jp/contests/abc206/tasks/abc206_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var cnt = 0
//var array = Array.init(repeating: 0, count: N+1)
var dic = Dictionary<Int, Int>()
for a in A {
    dic[a, default: 0] += 1
}
let num = dic.count

let dd = Array(dic.values)
let count = dd.count
var ruisekiwa = Array.init(repeating: 0, count: count + 1)
var sum = 0
for i in 0..<count {
    sum += dd[count - 1 - i]
    ruisekiwa[count - 1 - i] = sum
}
for i in dd.indices {
    cnt += dd[i] * ruisekiwa[i + 1]
}

print(cnt)
