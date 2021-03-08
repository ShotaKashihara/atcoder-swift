// D - Journey
// https://atcoder.jp/contests/abc194/tasks/abc194_d
import Foundation

let N = Int(readLine()!)!

var ans = 0.0
for i in 1..<N {
    ans += Double(N) / Double(N - i)
}
print(ans)
