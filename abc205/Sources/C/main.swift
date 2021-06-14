// C - POW
// https://atcoder.jp/contests/abc205/tasks/abc205_c
// 実行制限時間: 2.0 sec
import Foundation

let (A, B, C): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

if A == B || (abs(A) == abs(B) && C.isMultiple(of: 2)) {
    print("=")
    exit(0)
}

if A >= 0, B >= 0 {
    print(A > B ? ">" : "<")
} else if A >= 0, B < 0 {
    if C.isMultiple(of: 2) {
        print(abs(A) > abs(B) ? ">" : "<")
    } else {
        print(">")
    }
} else if A < 0, B >= 0 {
    if C.isMultiple(of: 2) {
        print(abs(A) > abs(B) ? ">" : "<")
    } else {
        print("<")
    }
} else {
    if C.isMultiple(of: 2) {
        print(abs(A) > abs(B) ? ">" : "<")
    } else {
        print(abs(A) > abs(B) ? "<" : ">")
    }
}
