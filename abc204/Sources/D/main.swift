// D - Cooking
// https://atcoder.jp/contests/abc204/tasks/abc204_d
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let T = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

// 初期状態 [0] の配列を用意する
var dp: [Int] = .init(repeating: 0, count: 1)
// この配列を遷移させていく

func print2(_ a: [Int]) {
//    print(a.map { $0 == .max ? 0 : $0 })
}
print2(dp)

for t in T {
    // 次の配列を用意
    var nextDp: [Int] = .init(repeating: .max, count: dp.count + t)
    // 元の配列のうち、遷移できた数のみ指定して回す
    for i in dp.indices where dp[i] != .max {
        nextDp[i] = dp[i] + t // 元の値に +t する
        if i + t < nextDp.count {
            nextDp[i + t] = dp[i] // 増えた配列の領域に元の配列の値をコピーする
        }
    }
    dp = nextDp
//    print2(dp)
}

var answer = Int.max
for i in dp.indices where dp[i] != .max {
    answer = min(answer, max(i, dp[i]))
}
print(answer)
