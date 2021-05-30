// 2 - Ruined Square
// https://atcoder.jp/contests/abc108/tasks/abc108_b
// 実行制限時間: 2.0 sec
import Foundation

let (x1, y1, x2, y2): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()

let dx = x2 - x1
let dy = y2 - y1

let x3 = x2 - dy
let y3 = y2 + dx

let x4 = x3 - dx
let y4 = y3 - dy

print(x3, y3, x4, y4)
