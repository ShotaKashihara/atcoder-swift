// A - Tiny Arithmetic Sequence
// https://atcoder.jp/contests/abc201/tasks/abc201_a
// 実行制限時間: 2.0 sec
import Foundation

let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }.sorted()

if abs(A[0] - A[1]) == abs(A[1] - A[2]) {
    print("Yes")
} else {
    print("No")
}
