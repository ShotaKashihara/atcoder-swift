// B - Alcoholic
// https://atcoder.jp/contests/abc189/tasks/abc189_b
import Foundation
func main() {
    var (n,x) = cin.int2
    let vp: [(v: Int, p: Int)] = cin.loopMap(count: n)
    x *= 100
    var sum = 0.0
    var count = 0
    for i in vp {
        if sum > Double(x) {
            break
        }
        count += 1
        sum += Double(i.v) * Double(i.p)
    }
    if sum > Double(x) {
        print(count)
    } else {
        print(-1)
    }
}
main()

// MARK: #### 以下、ライブラリ ####

import Foundation
#if os(Linux)
import Glibc
#else
import Darwin.C
#endif

enum cin {
    // 1
    static var int: Int { Int(readLine()!)! }
    // 1 2
    static var int2: (Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!) }
    // 1 2 3
    static var int3: (Int, Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!, Int(line[2])!) }
    // 1 2 3 4
    static var int4: (Int, Int, Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!, Int(line[2])!, Int(line[3])!) }
    // "AtCoder"
    static var str: String { readLine()! }
    // "At" "Coder"
    static var arrayStr: [String] { str.components(separatedBy: " ") }
    // 1 2 3 4
    static var array: [Int] { str.components(separatedBy: " ").map { Int($0)! } }
    // 1
    // 2
    static func loopMap(count: Int) -> [Int] { (0..<count).map { _ in int } }
    // 1 2
    // 2 3
    // 3 4
    /// `let array: [(a: Int, b: Int)] = cin.loopMap(count: Int)`
    static func loopMap(count: Int) -> [(Int, Int)] { (0..<count).map { _ in cin.int2 } }
    static func loopMap(count: Int) -> [(Int, Int, Int)] { (0..<count).map { _ in cin.int3 } }
    static func loopMap(count: Int) -> [(Int, Int, Int, Int)] { (0..<count).map { _ in cin.int4 } }
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

func bit全探索(n: Int) -> [[Bool]] {
    (0..<1<<n).map { bit in
        (0..<n).map { i in
            bit & 1<<i > 0
        }
    }
}

