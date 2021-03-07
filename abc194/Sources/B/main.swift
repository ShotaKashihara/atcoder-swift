// B - Job Assignment
// https://atcoder.jp/contests/abc194/tasks/abc194_b
import Foundation

let N = Int(readLine()!)!

let (A, B) = (0..<N).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
}

var _min = Int.max

// すべて1人に押し付けた場合
for i in 0..<N {
    _min = min(_min, A[i] + B[i])
}

// 分担した場合
for a in 0..<N {
    for b in 0..<N {
        guard a != b else { continue }
        _min = min(_min, max(A[a], B[b]))
    }
}

print(_min)
