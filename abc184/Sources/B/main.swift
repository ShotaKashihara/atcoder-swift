// B - Quizzes
// https://atcoder.jp/contests/abc184/tasks/abc184_b
import Foundation

var (N, X): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let S = readLine()!

for s in S {
    if s == "o" {
        X = max(0, X+1)
    } else {
        X = max(0, X-1)
    }
}

print(X)
