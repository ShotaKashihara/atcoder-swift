// D - Circle Lattice Points
// https://atcoder.jp/contests/abc191/tasks/abc191_d
import Foundation

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

extension String {
    // "ABC"[1] -> "B"
    subscript(i: Int) -> Character {
        get {
            self[index(at: i)]
        }
        set(char) {
            var characters = Array(self)
            characters[i] = char
            self = String(characters)
        }
    }
    func index(at offset: Int) -> String.Index { index(startIndex, offsetBy: offset) }
    // "ABC".swapAt(0, 1) -> "BAC"
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}

let c = Character(UnicodeScalar(65))
let s = String(UnicodeScalar(65))

print(c, s)

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
extension String {
    // "ABC"[1] -> "B"
    subscript(i: Int) -> Character {
        get {
            self[index(at: i)]
        }
        set(char) {
            var characters = Array(self)
            characters[i] = char
            self = String(characters)
        }
    }
    func index(at offset: Int) -> String.Index { index(startIndex, offsetBy: offset) }
    // "ABC".swapAt(0, 1) -> "BAC"
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}

