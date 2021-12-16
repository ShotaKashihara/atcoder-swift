// 018 - Statue of Chokudai（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_r
// 実行制限時間: 2.0 sec
import Foundation

let T = Double(readLine()!)!
let (L, X, Y): (Double, Double, Double) = { let l = readLine()!.split(separator: " ").map(String.init); return (Double(l[0])!, Double(l[1])!, Double(l[2])!) }()
let Q = Int(readLine()!)!
for _ in 0..<Q {
    let E = Double(readLine()!)!
    let phase = -2 * Double.pi * E / T - Double.pi / 2.0
    let (x, y, z) = (0.0, L / 2.0 * cos(phase), L / 2.0 * (1.0 + sin(phase)))
    print(180.0 / Double.pi * atan(z / sqrt((x - X) * (x - X) + (y - Y) * (y - Y))))
}
