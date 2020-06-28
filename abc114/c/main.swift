let n = cin.int
var count = 0

func toInt(_ A: [Int]) -> Int {
    var sum = 0
    A.enumerated().forEach { a in
        sum += a.element * (10 ^^ a.offset)
    }
    return sum
}

func dfs(_ A: inout [Int]) {
    if toInt(A) > n {
        return
    } else {
        /// 3,5,7 が1回以上含まれている
        if A.contains(3) && A.contains(5) && A.contains(7) {
            count += 1
        }
    }

    for v in [3,5,7] {
        A.append(v)
        dfs(&A)
        A.removeLast()
    }
}

var A = [Int]()
dfs(&A)

print(count)

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
