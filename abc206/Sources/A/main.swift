// A - Maxi-Buying
// https://atcoder.jp/contests/abc206/tasks/abc206_a
// 実行制限時間: 2.0 sec
import Foundation

let N = Double(readLine()!)!

let teika = 206

if Int(N*1.08) > teika {
    print(":(")
} else if Int(N*1.08) < teika {

    print("Yay!")
} else {
    print("so-so")
}
