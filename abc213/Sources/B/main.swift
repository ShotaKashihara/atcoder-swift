// B - Booby Prize
// https://atcoder.jp/contests/abc213/tasks/abc213_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let As = A.enumerated().sorted { l, r in
    l.element > r.element
}

//print(As)
print(As[1].offset + 1)
