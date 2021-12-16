// 046 - I Love 46（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_at
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let B = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let C = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var As = A.reduce(into: [Int: Int]()) { dic, a in
    dic[a % 46, default: 0] += 1
}
var Bs = B.reduce(into: [Int: Int]()) { dic, a in
    dic[a % 46, default: 0] += 1
}
var Cs = C.reduce(into: [Int: Int]()) { dic, a in
    dic[a % 46, default: 0] += 1
}

var cnt = 0
for a in 0..<46 {
    for b in 0..<46 {
        for c in 0..<46 {
            if (a + b + c) % 46 == 0 {
                cnt += As[a, default: 0] * Bs[b, default: 0] * Cs[c, default: 0]
            }
        }
    }
}
print(cnt)
