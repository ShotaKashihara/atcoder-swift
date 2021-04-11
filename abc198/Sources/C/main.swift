// C - Compass Walking
// https://atcoder.jp/contests/abc198/tasks/abc198_c
// 実行制限時間: 2.0 sec
import Foundation

let (R, X, Y): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

for h in 1... {
    let kyori = h * R * h * R
    let ユークリッド距離 = X * X + Y * Y
    if kyori == ユークリッド距離 {
        print(h)
        exit(0)
    }
    if kyori > ユークリッド距離 {
        if h > 1 {
            print(h)
        } else {
            print(h + 1)
        }
        exit(0)
    }
}
