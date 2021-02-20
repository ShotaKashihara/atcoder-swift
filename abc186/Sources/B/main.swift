// B - Blocks on Grid
// https://atcoder.jp/contests/abc186/tasks/abc186_b
import Foundation

let (h, w): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let array = (0..<h).flatMap { _ in
    readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
}

let mmin = array.min()!
print(array.map { $0 - mmin }.reduce(0, +))
