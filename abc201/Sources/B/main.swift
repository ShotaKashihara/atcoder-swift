// B - Do you know the second highest mountain?
// https://atcoder.jp/contests/abc201/tasks/abc201_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

var m = [Int: String]()

var highest = (0, "")
var highest2 = (0, "")

for i in 0..<N {
    let (S, T): (String, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (line[0], Int(line[1])!) }()

    if highest.0 < T {
        highest2 = highest
        highest = (T, S)
    } else if highest2.0 < T {
        highest2 = (T, S)
    }
}

print(highest2.1)
