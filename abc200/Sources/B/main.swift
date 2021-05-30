// B - 200th ABC-200
// https://atcoder.jp/contests/abc200/tasks/abc200_b
// 実行制限時間: 2.0 sec
import Foundation

var (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

for _ in 0..<K {
    if N % 200 == 0 {
        N = N / 200
    } else {
        N = N*1000 + 200
    }
}

print(N)
