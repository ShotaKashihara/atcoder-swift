// A - New Generation ABC
// https://atcoder.jp/contests/abc214/tasks/abc214_a
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

if (1...125).contains(N) {
    print(4)
} else if (126...211).contains(N) {
    print(6)
} else {
    print(8)
}
