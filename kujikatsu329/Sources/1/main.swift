// 1 - Quizzes
// https://atcoder.jp/contests/abc184/tasks/abc184_b
// 実行制限時間: 2.0 sec
import Foundation

var (N, X): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let S = readLine()!

for s in S {
    if s == "o" {
        X += 1
    } else {
        X = max(0, X-1)
    }
}

print(X)
