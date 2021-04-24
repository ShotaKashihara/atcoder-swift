// A - Square Inequality
// https://atcoder.jp/contests/abc199/tasks/abc199_a
// 実行制限時間: 2.0 sec
import Foundation

let (A, B, C): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

if (A*A + B*B) < C*C {
    print("Yes")
} else {
    print("No")
}
