// C - Colorful Candies
// https://atcoder.jp/contests/abc210/tasks/abc210_c
// 実行制限時間: 2.0 sec
import Foundation

func intN(from text: [UInt8]) -> [Int] {
    var values: [Int] = []
    var value = 0
    for c in text {
        let ascii = c
        if ascii == 0x20 { // space
            values.append(value)
            value = 0
            continue
        }

        let digit = ascii - 0x30
        value *= 10
        value += Int(digit)
    }
    values.append(value)
    return values
}

func measure(_ body: @escaping () -> Void) {
    let start = Date.timeIntervalSinceReferenceDate
    for _ in 0 ..< 10 {
        body()
    }
    let end = Date.timeIntervalSinceReferenceDate
    print((end - start) / 10, "sec")
}

let line = (1 ... 1_000_000).map { $0.description }.joined(separator: " ")
var byteLine = [UInt8]()

for i in 1 ... 1_000_000 {
    for b in Array(String(i).utf8) {
        byteLine.append(b)
    }
    if i < 1_000_000 {
        byteLine.append(UInt8(ascii: " " as UnicodeScalar))
    }
}

// 最適化で除去されないように sum に値を足し込んで最後に表示する
var sum: Int = 0

readLine()

measure {
    let numbers = intN(from: byteLine)
    sum += numbers.count
}
print(sum)
measure {
    let numbers = line.split(separator: " ").map { Int(String($0))! }
    sum += numbers.count
}

print(sum)


//let (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
//
//let C = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
//
//infix operator **: BitwiseShiftPrecedence
//func ** (lhs: Int, rhs: Int) -> Int {
//    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
//}
//
//var bag = [Int: Int].init()
//
//for i in 0 ..< K {
//    bag[C[i], default: 0] += 1
//}
//
//var ans = Set(C[0..<K]).count
//var current = ans
//
//for i in K ..< N {
//    if C[i-K] == C[i] {
//        continue
//    }
//    var mark = 0
//    // case ans += 1:
//    if bag[C[i-K], default: 0] <= 1 {
//        mark -= 1
//    }
//    // case ans -= 1:
//    if bag[C[i], default: 0] == 0 {
//        mark += 1
//    }
//
//    current += mark
//    ans = max(current, ans)
//    bag[C[i-K], default: 0] -= 1
//    bag[C[i], default: 0] += 1
//}
//print(ans)
