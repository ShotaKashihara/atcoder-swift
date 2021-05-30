// A - Three Dice
// https://atcoder.jp/contests/abc202/tasks/abc202_a
// 実行制限時間: 2.0 sec
import Foundation

let (a, b, c): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

print(abs(a + b + c - 7 * 3))
