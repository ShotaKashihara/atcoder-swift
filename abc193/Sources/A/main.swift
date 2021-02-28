// A - Discount
// https://atcoder.jp/contests/abc193/tasks/abc193_a
import Foundation

let (A, B): (Double, Double) = { let line = readLine()!.split(separator: " ").map(String.init); return (Double(line[0])!, Double(line[1])!) }()

print((1 - B/A)*100)
