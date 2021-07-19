// B - Can you buy them all?
// https://atcoder.jp/contests/abc209/tasks/abc209_b
// 実行制限時間: 2.0 sec
import Foundation

var (N, X): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }


for (i, a) in A.enumerated() {
    X -= i.isMultiple(of: 2) ? a : a - 1
}
print(X < 0 ? "No": "Yes")
