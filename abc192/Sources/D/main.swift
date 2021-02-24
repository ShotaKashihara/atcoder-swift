// D - Base n
// https://atcoder.jp/contests/abc192/tasks/abc192_d
import Foundation

let X = readLine()!
let d = X.max()!.wholeNumberValue!
let M = Int(readLine()!)!

if X.count == 1 {
    print(d <= M ? 1 : 0)
    exit(0)
}

// "22"
// d=2
// 3進法として見ると、"22" = 8
// 4進法として見ると、"22" = 10
// 5進法としてみると、"22" = 12
// 6進法としてみると、"22" = 14
// → 単調増加
// 上限は、M進法 まで

/// `[ok..<ng]`な半開区間の binarySearch
/// - Parameters:
///   - ok: 明らかに `true` な値
///   - ng: 明らかに `false` な値
///   - predicate: [ok..<ng] をちょうど２分割した点Pについて、
///   条件を満たしていれば`return true` なら ok の位置を点Pまで移動する。
///   条件を満たしていなければ `return false` なら ng の位置を点Pまで移動する。
func binarySearch(ok: Int, ng: Int, _ predicate: (Int) -> Bool) -> Int {
    var ok = ok
    var ng = ng
    while abs(ok - ng) > 1 {
        // (ok + ng) / 2 を Overflow しないように式変形したもの
        let P = ng + (ok - ng) / 2
        if predicate(P) {
            ok = P
        } else {
            ng = P
        }
    }
    return ok
}

infix operator **: BitwiseShiftPrecedence

func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

extension Int {
    /// 数字のみの文字列を radix 進法の数値に変換
    /// https://atcoder.jp/contests/abc192/tasks/abc192_d
    init?(_ string: String, radix: Int) {
        var result = 0
        for x in string.map(\.wholeNumberValue!) {
            let (d1, e1) = result.multipliedReportingOverflow(by: radix)
            if e1 {
                return nil
            }
            let (d2, e2) = d1.addingReportingOverflow(x)
            if e2 {
                return nil
            }
            result = d2
        }
        self = result
    }
}

let ok = binarySearch(ok: d, ng: 10**18+1) { n -> Bool in
    if let r = Int(X, radix: n) {
        return r <= M
    } else {
        return false
    }
}

print(ok - d)
