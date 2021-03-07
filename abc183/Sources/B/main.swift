// B - Billiards
// https://atcoder.jp/contests/abc183/tasks/abc183_b
import Foundation

let (Sx, Sy, Gx, Gy): (Double, Double, Double, Double) = { let l = readLine()!.split(separator: " ").map(String.init); return (Double(l[0])!, Double(l[1])!, Double(l[2])!, Double(l[3])!) }()

let a = 1 - Gy / (Sy + Gy)
let d = Gx - Sx
print(Sx + d * a)
