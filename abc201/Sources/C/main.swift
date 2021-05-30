// C - Secret Number
// https://atcoder.jp/contests/abc201/tasks/abc201_c
// 実行制限時間: 2.0 sec
import Foundation

let S = readLine()!

let o_count = S.filter { $0 == "o" }.count
let x_count = S.filter { $0 == "x" }.count
let q_count = S.filter { $0 == "?" }.count

enum N {
    case o, x, q
}

let numbers: [N] = S.map {
    switch $0 {
    case "o": return .o
    case "x": return .x
    default: return .q
    }
}

// 全探索

func check(number: Int) -> Bool {
    let N = ("000" + String(number)).suffix(4)
    for n in numbers.enumerated() {
        // n.index が含まれていたら
        switch n.element {
        case .o:
            if !N.contains(String(n.offset)) {
                return false
            }
        case .x:
            if N.contains(String(n.offset)) {
                return false
            }
        case .q:
            break
        }
    }
    return true
}

var ans = 0
for i in 0...9999 {
//    if check(number: i) {
//        print(("000" + String(i)).suffix(4), true)
//    } else {
//        print(("000" + String(i)).suffix(4), false)
//    }
    ans += check(number: i) ? 1 : 0
}
print(ans)
