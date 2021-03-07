// A - Determinant
// https://atcoder.jp/contests/abc184/tasks/abc184_a
import Foundation

let (a, b): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let (c, d): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

print(a*d-b*c)
