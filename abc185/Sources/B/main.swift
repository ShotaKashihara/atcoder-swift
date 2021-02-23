// B - Smartphone Addiction
// https://atcoder.jp/contests/abc185/tasks/abc185_b
import Foundation

let (N, M, T): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

let (A, B) = (0..<M).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
}

var n = N
(0..<M).forEach { i in
    let from = i == 0 ? 0 : B[i-1]
    n -= A[i] - from
    if n <= 0 {
        print("No")
        exit(0)
    }
    n = min(N, n + B[i] - A[i])
    if n <= 0 {
        print("No")
        exit(0)
    }
}

print((n - (T - B.last!)) <= 0 ? "No" : "Yes")
