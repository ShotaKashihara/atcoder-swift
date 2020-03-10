import Foundation

enum cin {
    // 123
    static var n: Int { Int(readLine()!)! }
    // 12 23
    static var pair: (Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!) }
    // 12 23 34
    static var triple: (Int, Int, Int) { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!, Int(line[2])!) }
    // AtCoder
    static var line: String { readLine()! }
    // At Coder
    static var arrayStr: [String] { line.components(separatedBy: " ") }
    // 1 2 3 4
    static var array: [Int] { line.components(separatedBy: " ").map { Int($0)! } }
    // 1
    // 2
    // 3
    static func v_array(count: Int) -> [Int] { (0..<count).map { _ in n } }
}

extension Int {
    var digits: [Int] { Array(String(self)).map { Int(String($0))! } }
}

extension Array where Element == Int {
    var sum: Int { self.reduce(0, +) }
    var orderBy: [Int] { sorted() }
    var orderByDesc: [Int] { sorted(by: { $0 > $1 }) }
    var distinct: [Int] { Array(Set(self)) }
}

extension String {
    // cin.line.regex(match: "^(dream|dreamer|erase|eraser)*$")
    func regex(match pattern: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: self.count)) != nil
    }
}


enum LanguageTest202001 {
    /// https://atcoder.jp/contests/language-test-202001/tasks/practice_1
    struct practice_1 {
        static func main() {
            let a = cin.n
            let (b, c) = cin.pair
            let s = cin.line
            print("\(a+b+c) \(s)")
        }
    }
    /// https://atcoder.jp/contests/language-test-202001/tasks/abc086_a
    struct abc086_a {
        static func main() {
            let (a, b) = cin.pair
            print(a*b%2==0 ? "Even" : "Odd" )
        }
    }
    /// https://atcoder.jp/contests/language-test-202001/tasks/abc081_a
    struct abc081_a {
        static func main() {
            print(Array(cin.line).filter { $0 == "1" }.count)
        }
    }
    /// https://atcoder.jp/contests/language-test-202001/tasks/abc081_b
    struct abc081_b {
        static func main() {
            _ = cin.n
            var a = cin.array
            var ans = 0
            while (a.allSatisfy { $0 % 2 == 0 }) {
                a = a.map { $0/2 }
                ans += 1
            }
            print(ans)
        }
    }
    // https://atcoder.jp/contests/language-test-202001/tasks/abc087_b
    struct abc087_b {
        static func main() {
            let a = cin.n // 500yen
            let b = cin.n // 100yen
            let c = cin.n //  50yen
            let x = cin.n

            var ans = 0
            (0...a).forEach { a in
                (0...b).forEach { b in
                    (0...c).forEach { c in
                        ans += a*500+b*100+c*50 == x ? 1 : 0
                    }
                }
            }
            print(ans)
        }
    }
    // https://atcoder.jp/contests/language-test-202001/tasks/abc083_b
    struct abc083_b {
        static func main() {
            let nab = cin.array
            let n = nab[0], a = nab[1], b = nab[2]
            var ans = 0
            (1...n).forEach {
                ans += (a...b).contains($0.digits.sum) ? $0 : 0
            }
            print(ans)
        }
    }
    // https://atcoder.jp/contests/language-test-202001/tasks/abc088_b
    struct abc088_b {
        static func main() {
            _ = cin.n
            let a: [Int] = cin.array.orderByDesc
            var ans = 0
            a.enumerated().forEach { (offset, i) in
                ans += offset%2==0 ? i : -i
            }
            print(ans)
        }
    }
    // https://atcoder.jp/contests/language-test-202001/tasks/abc085_b
    struct abc085_b {
        static func main() {
            let n = cin.n
            let d = cin.v_array(count: n)
            let ans = d.distinct.count
            print(ans)
        }
    }
    // https://atcoder.jp/contests/language-test-202001/tasks/abc085_c
    struct abc085_c {
        static func main() {
            let (n, y) = cin.pair
            var not_found = true
            (0...n).forEach { 諭吉 in
                (0...n-諭吉).forEach { 樋口 in
                    let 野口 = n - 諭吉 - 樋口
                    if not_found && 諭吉*10000+樋口*5000+野口*1000 == y {
                        print("\(諭吉) \(樋口) \(野口)")
                        not_found = false
                    }
                }
            }
            if not_found {
                print("-1 -1 -1")
            }
        }
    }
    // https://atcoder.jp/contests/language-test-202001/tasks/arc065_a
    struct arc065_a {
        static func main() {
            var line = cin.line
            let dream = String("dream")
            let dreamer = String("dreamer")
            let erase = String("erase")
            let eraser = String("eraser")
            // 📝 line.count > 0 だと TLE
            while !line.isEmpty {
                if line.hasSuffix(dreamer) {
                    line.removeLast(dreamer.count)
                } else if line.hasSuffix(dream) {
                    line.removeLast(dream.count)
                } else if line.hasSuffix(eraser) {
                    line.removeLast(eraser.count)
                } else if line.hasSuffix(erase) {
                    line.removeLast(erase.count)
                } else {
                    break
                }
            }

            print(line.isEmpty ? "YES" : "NO")

            // 別解法
            // print(cin.line.regex(match: "^(dream|dreamer|erase|eraser)*$") ? "YES" : "NO")
        }
    }
}

LanguageTest202001.arc065_a.main()
