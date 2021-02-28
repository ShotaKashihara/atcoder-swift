// B - Play Snuke
// https://atcoder.jp/contests/abc193/tasks/abc193_b
import Foundation

let N = Int(readLine()!)!

let (A, P, X) = (0..<N).reduce(into: ([Int](), [Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
    r.2.append(Int(l[2])!)
}

var price = Int.max
(0..<N).forEach { i in
    if X[i] - A[i] > 0 {
        price = min(price, P[i])
    }
}

print(price == Int.max ? -1 : price)
