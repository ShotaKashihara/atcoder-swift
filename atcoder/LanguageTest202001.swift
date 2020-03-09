import Foundation

enum LanguageTest202001 {
    /// https://atcoder.jp/contests/language-test-202001/tasks/practice_1
    struct practice_1 {
        static func main() {
            let a = cin.number
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
            _ = cin.number
            var a: [Int] = cin.array()
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
            let a = cin.number // 500yen
            let b = cin.number // 100yen
            let c = cin.number //  50yen
            let x = cin.number

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
            let nab: [Int] = cin.array()
            let n = nab[0], a = nab[1], b = nab[2]
            var ans = 0
            (1...n).forEach {
                ans += (a...b).contains($0.digits.sum) ? $0 : 0
            }
            print(ans)
        }
    }
}
