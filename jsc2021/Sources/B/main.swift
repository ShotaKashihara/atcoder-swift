// B - Xor of Sequences
// https://atcoder.jp/contests/jsc2021/tasks/jsc2021_b
// 実行制限時間: 2.0 sec
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
var B = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
var tmp = [Int]()

while !A.isEmpty || !B.isEmpty {
    let AF = A.first ?? Int.max
    let BF = B.first ?? Int.max
    if AF == BF {
        A = Array(A.dropFirst())
        B = Array(B.dropFirst())
    } else {
        if AF < BF {
            tmp.append(AF)
            A = Array(A.dropFirst())
        } else {
            tmp.append(BF)
            B = Array(B.dropFirst())
        }
    }
}

print(tmp.map(String.init).joined(separator: " "))
