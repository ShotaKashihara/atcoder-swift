// A - Brick
// https://atcoder.jp/contests/abc186/tasks/abc186_a
import Foundation

let (n, w): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

print(n/w)
