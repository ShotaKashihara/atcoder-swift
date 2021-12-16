// D - Coprime 2
// https://atcoder.jp/contests/abc215/tasks/abc215_d
// 実行制限時間: 2.0 sec
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

extension Int {
    /// 約数
    /// 12.divisoros() == [1,2,3,4,6,12]
    func divisors() -> [Int] {
        var i = 1
        var result = [Int]()
        while i * i <= self {
            if self % i == 0 {
                result.append(i)
                if i * i != self {
                    result.append(self / i)
                }
            }
            i += 1
        }
        return result.sorted()
    }

    /// 素因数分解
    /// 12.primeFactorize() == [2, 2, 3]
    func primeFactorize() -> [Int] {
        var pfactor = [Int]()
        var t = self
        for candidate in stride(from: 2, through: self, by: 1) {
            if self < candidate * candidate {
                break
            }
            while t % candidate == 0 {
                pfactor.append(candidate)
                t /= candidate
            }
        }
        if t != 1 {
            pfactor.append(t)
        }
        return pfactor
    }
}

var ok = [Bool](repeating: true, count: M+1)
ok[0] = false

for a in A {
    for f in a.primeFactorize() {
        if f <= M {
            ok[f] = false
        }
    }
}

if M > 1 {
    for p in 2...M where ok[p] == false {
        for i in stride(from: p + p, through: M, by: p) {
            if i <= M {
                ok[i] = false
            }
        }
    }
}

print(ok.filter { $0 }.count)
for (i, o) in ok.enumerated() where o == true {
    print(i)
}
