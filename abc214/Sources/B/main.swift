// B - How many?
// https://atcoder.jp/contests/abc214/tasks/abc214_b
// 実行制限時間: 2.0 sec
import Foundation

let (S, T): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var cnt = 0
for a in 0...S {
    for b in 0...(S - a) {
        for c in 0...(S - a - b) {
            if a * b * c <= T {
                cnt += 1
            }
        }
    }
}
print(cnt)
