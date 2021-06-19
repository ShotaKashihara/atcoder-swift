// B - Savings
// https://atcoder.jp/contests/abc206/tasks/abc206_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

//1000000000

var sum = 0
for i in 1... {
    sum += i
    if sum >= N {
        print(i)
        exit(0)
    }
}

