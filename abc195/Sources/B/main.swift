// B - Many Oranges
// https://atcoder.jp/contests/abc195/tasks/abc195_b
// 実行制限時間: 2.0 sec
import Foundation

let (A, B, W): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])! * 1000) }()

// まず `UNSATISFIABLE` を判定する

var count = 0
while true {
    count += 1
    if (A*count...B*count).contains(W) {
        break
    } else {
        if W < A*count {
            print("UNSATISFIABLE")
            exit(0)
        }
    }
}

// min を求める

var min = W / B + (W % B == 0 ? 0 : 1)

var max = W / A

print(min, max)
