// C - MAD TEAM
// https://atcoder.jp/contests/zone2021/tasks/zone2021_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
struct Member {
    let p, s, t, k, i: Int

    func scoreToBit(x: Int) -> Int {
        var bit = 0
        bit |= (p >= x ? 1 : 0)<<0
        bit |= (s >= x ? 1 : 0)<<1
        bit |= (t >= x ? 1 : 0)<<2
        bit |= (k >= x ? 1 : 0)<<3
        bit |= (i >= x ? 1 : 0)<<4
        return bit
    }
}
let members = (0..<N).map { _ -> Member in
    let (p, s, t, k, i): (Int, Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!, Int(l[4])!) }()
    return Member(p: p, s: s, t: t, k: k, i: i)
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

/// 「チームの総合力が x 以上になるか？」
func check(_ x: Int) -> Bool {
    let memberBits = members.map { $0.scoreToBit(x: x) }
    let setMemberBits = Set(memberBits)
    var ans = false
    // members.count: 最大 3000
    // setMemberBits.count: 最大 2^5 (32)
    // 三重ループしても余裕で間に合う
    for a in setMemberBits {
        for b in setMemberBits {
            for c in setMemberBits {
                // a,b,c でチームを組んだときに全ての能力値が true になるか判定
//                if (a | b | c) == (1<<5-1) {
                if (a | b | c) == 0b11111 {
                    ans = true
                }
            }
        }
    }
    return ans
}

print(binarySearch(ok: 0, ng: Int.max, check(_:)))
