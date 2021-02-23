// A - ABC Preparation
// https://atcoder.jp/contests/abc185/tasks/abc185_a
import Foundation

let a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
print(a.min()!)
