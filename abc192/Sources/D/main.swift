// D - Base n
// https://atcoder.jp/contests/abc192/tasks/abc192_d
import Foundation

let X = readLine()!
let M = Int(readLine()!)!
let d = Array(X).map { Int("\($0)")! }.max()!

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

extension Int {
    /// 数字のみの文字列を radix 進法の数に変換
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

// コーナーケース
if X.count == 1 {
    print(X.map { Int("\($0)")! }.last! <= M ? 1 : 0)
    exit(0)
}

let ans = binarySearch(ok: d+1, ng: Int.max) { n -> Bool in
    // X を n 進法表記で見て10進法に変換
    if let value = Int(X, radix: n) {
        return value <= M
    } else {
        return false
    }
}

print(ans-d)
