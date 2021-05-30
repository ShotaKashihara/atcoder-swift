// D - aab aba baa
// https://atcoder.jp/contests/abc202/tasks/abc202_d
// 実行制限時間: 2.0 sec
import Foundation

let (A, B, K): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

func ncr<Integer>(_ n: Integer, _ r: Integer, modulus: Integer?) -> Integer where Integer: BinaryInteger, Integer.Stride: SignedInteger {
    precondition(n >= 0)
    precondition(r >= 0)
    precondition(n >= r)
    print("\(n) choose \(r)")
    if let modulus = modulus {
        precondition(modulus >= 1)
        func npr(_ n: Integer, _ r: Integer, modulus: Integer) -> Integer {
            (n - r + 1 ..< n + 1).reduce(into: 1) { $0 = ($0 * $1) % modulus }
        }
        func pow(_ a: Integer, _ b: Integer, modulus: Integer) -> Integer {
            var result: Integer = .init(1)
            var a = a
            var b = b
            while true {
                if b & 0x1 != .zero {
                    result = (result * a) % modulus
                }
                b >>= 1
                guard b > .zero else { break }
                a = (a * a) % modulus
            }
            return result
        }
        let numerator = npr(n, r, modulus: modulus)
        let denominator = npr(r, r, modulus: modulus)
        return (numerator * pow(denominator, modulus - 2, modulus: modulus)) % modulus
    } else {
        let range: Range<Integer> = 1 ..< r + 1
        return range.reduce(into: 1 as Integer) { $0 = $0 * (n - $1 + 1) / $1 }
    }
}

var count = 0
var a_count = 0
var ans = ""

while count < A + B {
    if A == a_count {
        ans += "b"
        count += 1
        continue
    }
    if ncr(A + B - count - 1, A - a_count - 1, modulus: nil) < K {
        ans += "b"
        count += 1
    } else {
        ans += "a"
        count += 1
        a_count += 1
    }
}

print(ans)

//var count = 1
//func dfs(_ str: String, _ a: Int, _ b: Int) {
//    if A == a, B == b {
//        print(str, count)
//        count += 1
//    }
//
//    if A > a {
//        dfs(str + "a", a + 1, b)
//    }
//
//    if B > b {
//        dfs(str + "b", a, b + 1)
//    }
//}
//
//dfs("", 0, 0)

//aaabbbb 1
//aababbb 2
//aabbabb 3
//aabbbab 4
//aabbbba 5
//abaabbb 6
//abababb 7
//ababbab 8
//ababbba 9
//abbaabb 10
//abbabab 11
//abbabba 12
//abbbaab 13
//abbbaba 14
//abbbbaa 15 // 6 choose 2
//baaabbb 16
//baababb 17
//baabbab 18
//baabbba 19
//babaabb 20
//bababab 21
//bababba 22
//babbaab 23
//babbaba 24
//babbbaa 25
//bbaaabb 26
//bbaabab 27
//bbaabba 28
//bbabaab 29
//bbababa 30
//bbabbaa 31
//bbbaaab 32
//bbbaaba 33
//bbbabaa 34
//bbbbaaa 35
