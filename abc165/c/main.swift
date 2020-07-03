let (n,m,q) = cin.triple

// (3,4,3)
// [1,1,1]
// [1,1,2]
// [1,1,3]
// [1,1,4]
// [1,2,2]
// [1,2,3]
// [1,2,4]
// [1,3,3]
// [1,3,4]
// [1,4,4]
// [2,2,2] ...

var imax = 0
struct Q {
    let a: Int
    let b: Int
    let c: Int
    let d: Int
}
var qarray: [Q] = (0..<q).map { _ in
    let (a,b,c,d) = cin.quadro
    return Q(a: a, b: b, c: c, d: d)
}

// 深さ優先探索DFSを組む
func dfs(_ array: inout [Int]) {
    if array.count == n {
        // 最大値計算
        calc(array)
        return
    }

    // 次の桁を全探索
    let last = array.last ?? 1
    (last...m).forEach { i in
        array.append(i)
        dfs(&array)
        array.removeLast()
    }
}

// 最大値を求める
func calc(_ array: [Int]) {
    let sum = qarray.map { q in 
        if array[q.b-1] - array[q.a-1] == q.c {
            return q.d
        } else {
            return 0
        }
    }.sum
    imax = max(imax, sum)
}

var array = [Int]()
dfs(&array)
print(imax)

import Foundation
#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

enum cin {
    // 123
    static var int: Int { Int(readLine()!)! }
    // 12 23
    static var pair: (Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!) }
    // 12 23 34
    static var triple: (Int, Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!, Int(line[2])!) }
    // 12 23 34 45
    static var quadro: (Int, Int, Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!, Int(line[2])!, Int(line[3])!) }
    // AtCoder
    static var str: String { readLine()! }
    // At Coder
    static var arrayStr: [String] { str.components(separatedBy: " ") }
    // 1 2 3 4
    static var array: [Int] { str.components(separatedBy: " ").map { Int($0)! } }
    // 1
    // 2
    // 3
    static func v_array(count: Int) -> [Int] { (0..<count).map { _ in int } }
}

/// ヘルパー関数ライブラリ
/// https://github.com/ankurp/Dollar
/// https://github.com/ankurp/Cent
extension Int {
    // 123 -> [1, 2, 3]
    var digits: [Int] { Array(String(self)).map { Int(String($0))! } }
}

extension Array where Element == Int {
    // [2, 1, 3, 2] -> 8
    var sum: Int { self.reduce(0, +) }
    // [2, 1, 3, 2] -> [1, 2, 2, 3]
    var orderBy: [Int] { sorted() }
    // [2, 1, 3, 2] -> [3, 2, 2, 1]
    var orderByDesc: [Int] { sorted(by: { $0 > $1 }) }
    // [2, 1, 3, 2] -> [2, 1, 3]
    var distinct: [Int] { Array(Set(self)) }
}

extension String {
    // e.g. cin.line.regex(match: "^(dream|dreamer|erase|eraser)*$")
    func regex(match pattern: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: self.count)) != nil
    }
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
