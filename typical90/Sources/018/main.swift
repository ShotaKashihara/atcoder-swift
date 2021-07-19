// 018 - Statue of Chokudai（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_r
// 実行制限時間: 2.0 sec
import Foundation

let T = Double(readLine()!)!
let (L, X, Y): (Double, Double, Double) = { let l = readLine()!.split(separator: " ").map(String.init); return (Double(l[0])!, Double(l[1])!, Double(l[2])!) }()
let Q = Int(readLine()!)!

for _ in 0..<Q {
    let E = Double(readLine()!)!

    let (x, y, z) = (0, -L/2*sin(360*E/T), L/2 - cos(360*E/T))
    let a = sqrt(<#T##Double#>)
}
