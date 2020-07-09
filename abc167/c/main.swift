let (n,m,x) = cin.triple
/// [60 2 2 2]
let CA = Array(1...n).map { _ in
    return cin.array
}

var v = Int.max
for indexies in bit全探索(n: n) {
    let ca = indexies.map { CA[$0] }
    let c = ca.map { $0[0] }.sum
    let res = (1...m).allSatisfy { mi in
        return x <= ca.map { $0[mi] }.sum
    }
    if res {
        v = min(v, c)
    }
}

if v == Int.max {
    print(-1)
} else {
    print(v)
}

typealias Index = Int
func bit全探索(n: Int) -> [[Index]] {
    (0..<1<<n).map { bit in
        var s = [Int]()
        for i in 0..<n {
            if bit & 1<<i > 0 {
                s.append(i)
            }
        }
        return s
    }
}

// MARK: #### 以下、ライブラリ ####

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

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
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
