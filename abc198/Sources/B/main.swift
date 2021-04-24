// B - Palindrome with leading zeros
// https://atcoder.jp/contests/abc198/tasks/abc198_b
// 実行制限時間: 2.0 sec
import Foundation

var N = readLine()!
while N.hasSuffix("0") {
    N = String(N.dropLast())
}

extension String {
    var isPalindrome: Bool {
        return self == String(self.reversed())
    }
}

print(N.isPalindrome ? "Yes" : "No")
