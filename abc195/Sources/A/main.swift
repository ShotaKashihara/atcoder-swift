// A - Health M Death
// https://atcoder.jp/contests/abc195/tasks/abc195_a
// 実行制限時間: 2.0 sec
import Foundation

let (M, H): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
print(H%M == 0 ? "Yes" : "No")
