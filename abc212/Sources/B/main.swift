// B - Weak Password
// https://atcoder.jp/contests/abc212/tasks/abc212_b
// 実行制限時間: 2.0 sec
import Foundation

let X = readLine()!.map { Int(String($0))! }

if Set(X).count == 1 {
    print("Weak")
    exit(0)
}

func weak(_ a: Int, _ b: Int) -> Bool {
    if a == 9 {
        return b == 0
    } else {
        return a + 1 == b
    }
}

//print(X)
print((weak(X[0], X[1]) && weak(X[1], X[2]) && weak(X[2], X[3])) ? "Weak" : "Strong")
