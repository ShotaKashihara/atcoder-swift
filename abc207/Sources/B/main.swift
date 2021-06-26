// B - Hydrate
// https://atcoder.jp/contests/abc207/tasks/abc207_b
// 実行制限時間: 2.0 sec
import Foundation

var (A, B, C, D): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()
var red = 0
var count = 0

while A > red * D {
    if B >= C * D {
        count = -1
        break
    }
    count += 1
    A += B
    red += C
}
print(count)
