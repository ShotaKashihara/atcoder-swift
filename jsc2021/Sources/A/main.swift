// A - Competition
// https://atcoder.jp/contests/jsc2021/tasks/jsc2021_a
// 実行制限時間: 2.0 sec
import Foundation

let (X, Y, Z): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

for i in 1... {
    let i = 100000000-i
    if Y*Z > X*i {
        print(i)
        exit(0)
    }
}
