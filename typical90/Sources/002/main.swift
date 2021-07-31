// 002 - Encyclopedia of Parentheses（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_b
// 実行制限時間: 2.0 sec
import Foundation

func bit全探索(n: Int) -> [[Bool]] {
    (0..<1<<n).map { bit in
        (0..<n).map { i in
            bit & 1<<i > 0
        }
    }
}

let N = Int(readLine()!)!

func valid(a: String) -> Bool {
    var cnt = 0
    for s in a {
        cnt += s == "(" ? 1 : -1
        if cnt < 0 {
            return false
        }
    }
    return cnt == 0
}

for b in bit全探索(n: N) {
    let a = b.reversed().map { $0 ? ")" : "(" }.joined()
    if valid(a: a) {
        print(a)
    }
}
