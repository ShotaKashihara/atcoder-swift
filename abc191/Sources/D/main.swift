// D - Circle Lattice Points
// https://atcoder.jp/contests/abc191/tasks/abc191_d
import Foundation

func main() {
    let (a,b,r) = cin.int3
    // 中心(a,b) 半径r の円の方程式
    // (x-a)^2 + (y-b)^2 = r^2
    // http://w3e.kanazawa-it.ac.jp/math/category/kansuu/iroiro-kansu/henkan-tex.cgi?target=/math/category/kansuu/iroiro-kansu/ennohouteisiki.html
    
    func isInner(x: Double, y: Double) -> Bool {
        let lhs = pow(x-a, 2) + pow(y-b, 2)
        let rhs = pow(r, 2)
        return lhs <= rhs
    }
    
    func yCount(x: Double) -> Int {
        let rr = pow(r, 2) - pow(x-a, 2)
        if rr < 0 {
            return 0
        }
        let absY = sqrt(rr) - b
        return 1 + Int(absY)
    }
    
    // を満たす x と y が整数の数を数えれば良い
    
    let minX = Int(a-r-1)
    let minY = Int(b-r-1)
    let maxX = Int(a+r+1)
    let maxY = Int(b+r+1)

    var count = 0
    // この範囲で全探索する
    // → 全探索だと間に合わない
    // → 各行ごとに、最初と最後だけ分かれば間は計算できる
    for x in ((minX+1)...(maxX-1)) {
//        var y1 = minY+1
//        var y2 = maxY-1
        let c = yCount(x: Double(x))
//        print("x: ", x, "c: ", c)
        count += c
//        for y in (minY...maxY) {
//            // 方程式を満たすか？
//            if isInner(x: Double(x), y: Double(y)) {
//                count += 1
//            }
//        }
        // for y1
//        while !isInner(x: Double(x), y: Double(y1)) {
//            y1 += 1
//        }
//        // for y2
//        while !isInner(x: Double(x), y: Double(y2)) {
//            y2 -= 1
//        }
//        print("x:", x, "y1:", y1, "y2:", y2)
//        count += y2-y1+1
    }
    
    print(count)
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
    static var int3: (Double, Double, Double) { let line = readLine()!.components(separatedBy: " "); return (Double(line[0])!, Double(line[1])!, Double(line[2])!) }
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
//    static func loopMap(count: Int) -> [(Int, Int, Int)] { (0..<count).map { _ in cin.int3 } }
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

