// 001 - Yokan Party（★4）
// https://atcoder.jp/contests/typical90/tasks/typical90_a
// 実行制限時間: 2.0 sec
import Foundation

let (N, L): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let K = Int(readLine()!)!

var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
A.append(L)
let A2 = A.indices.map { i -> Int in
    if i == 0 { return A[i] }
    return A[i] - A[i - 1]
}
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

//- 最小値の最大化 => 二分探索
//- ピースの長さ: 1~10^5
//- 「全てのピースが ? 以上でかつ、K + 1 個以上に分割可能か？」というクエリ
//- N 個の切れ目を前から見ていって、ピースの長さが ? 以上になったら切る。という操作を末端まで繰り返す → ? 以上の長さのピースの数が K+1 以上なら true, 未満なら false を返す

func solve(value: Int) -> Bool {
    var piece_count = 0
    var piece = 0
    for a in A2 {
        piece += a
        if piece >= value {
            piece_count += 1
            piece = 0
        }
    }
    return piece_count >= K + 1
}

func solve(M: Int) -> Bool {
    var cnt = 0
    var pre = 0
    for i in 0..<N {
        if A[i] - pre >= M, L - A[i] >= M {
            cnt += 1
            pre = A[i]
        }
    }
    return cnt >= K
}

let ans = binarySearch(ok: -1, ng: L + 1) { M in
    solve(M: M)
//    solve(value: M)
}
print(ans)
