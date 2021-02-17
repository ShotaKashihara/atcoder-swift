// B - -- - B
// https://atcoder.jp/contests/arc112/tasks/arc112_b
import Foundation

let (B, C): (Int, Int) = { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!) }()

func solve(B: Int, C: Int) -> (Int, Int) {
    guard C > 0 else { return (B, B) }
    let n = C/2
    if C.isMultiple(of: 2) {
        return (B-n, B+n-1)
    } else {
        return (-B-n, -B+n)
    }
}

let (a, b) = solve(B: B, C: C)
let (c, d) = solve(B: B, C: C - 1)

// 重複部分を引く
let overlap = max(min(b, d) - max(a, c) + 1, 0)
print((b - a + 1) + (d - c + 1) - overlap)
