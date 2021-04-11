// B - Palindrome with leading zeros
// https://atcoder.jp/contests/abc198/tasks/abc198_b
// 実行制限時間: 2.0 sec
import Foundation

var N = readLine()!
while N.hasSuffix("0") {
    N = String(N.dropLast())
}

while N.count > 1 {
    if N.last == N.first {
        N = String(N.dropLast())
        N = String(N.dropFirst())
    } else {
        print("No")
        exit(0)
    }
}
print("Yes")
