// C - Max GCD 2
// https://atcoder.jp/contests/jsc2021/tasks/jsc2021_c
// 実行制限時間: 2.0 sec
import Foundation

func gcd(a: Int, b: Int) -> Int {
    return b == 0 ? a : gcd(a: b, b: a % b)
}

func enum_divisors(n: Int) -> [Int] {
    var res = [Int]()
    for i in 1... {
        guard i * i <= n else { break }
        if n % i == 0 {
            res.append(i)
            if n/i != i {
                res.append(n/i)
            }
        }
    }
    return res.sorted()
}

let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var ans = 0
for a in A...B-1 {
    for e in enum_divisors(n: a) {
        if B % e == 0 {
            ans = max(ans, e)
        }
    }
    
//    for b in a+1...B {
//        ans = max(ans, gcd(a: a, b: b))
//    }
    // a より大きく、
}

//print(gcd(a: 2, b: 3))
//print(gcd(a: 2, b: 4))
//print(gcd(a: 3, b: 4))
//print(gcd(a: 199999, b: 200000))
print(ans)
