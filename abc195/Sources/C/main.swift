// C - Comma
// https://atcoder.jp/contests/abc195/tasks/abc195_c
// 実行制限時間: 2.0 sec
import Foundation

var N = readLine()!

// 1000 ** 1 未満なら、(N * 0) が答え
// 1000 ** 2 未満なら、((N - 999) * 1 + N * 0) が答え
// 1000 ** 3 未満なら、((N - 999999) * 2 + (N - 999) * 1 + N * 0) が答え


if N.count < 4 {
    print(0)
} else if N.count < 7 {
    print(Int(N)! - 999)
} else if N.count < 10 {
    print(
        1*999000 + ((Int(N)! - 999999) * 2)
    )
} else if N.count < 13 {
    print(
        1*999000 + 2*999000000 + ((Int(N)! - 999999999) * 3)
    )
} else if N.count < 16 {
    print(
       1*999000 + 2*999000000 + 3*999000000000 + ((Int(N)! - 999999999999) * 4)
    )
} else {
    print(
       1*999000 + 2*999000000 + 3*999000000000 + 4*999000000000000 + ((Int(N)! - 999999999999999) * 5)
    )
}


//000
//999,000
//2*999,000,000 = 1998999000
//3*999,000,000,000 = 2997000000000
//
//2998998999000
//
//2998,998,999,000
//
//107730272137364 - 104731273138364

//1998999000000
//
//107730272137364 - 105731273137364
//1998999000000
//
//107730272137364 - 105732274135364
//1997998002000

//27,182,818,284,590
//
//expect: 107730272137364
//actual: 104731273138364 +

//var sum = 0
//var comma = (N.count - 1) / 3
//while !N.isEmpty {
//    let c = N.count % 3
//    let suffixc = c == 0
//        ? N.count - 3
//        : N.count - c
//    guard suffixc > 0 else { break }
//    let suffix = String(N.suffix(suffixc))
//    let prefix = String(N.prefix(c == 0 ? 3 : c))
//
//    sum += comma * (Int(suffix)! + 1) * Int(prefix)!
//    comma -= 1
//}
//print(sum)

//var s: [Int] = []

//while !N.isEmpty {
//    let suffix = N.suffix(3)
//    N = String(N.dropLast(min(N.count, 3)))
//    s.append(Int(suffix)!)
//}
//
//var sum = 0
//infix operator **: BitwiseShiftPrecedence
//func ** (lhs: Int, rhs: Int) -> Int {
//    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
//}
//
//var a = 0
//for (i, e) in s.enumerated() {
//    guard i > 0 else { continue }
//    sum += s[i-1] * i * (1000 ** (i - 1)) + 1
////    print(sum)
//}
//
//print(sum)

