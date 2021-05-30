// B - 180°
// https://atcoder.jp/contests/abc202/tasks/abc202_b
// 実行制限時間: 2.0 sec
import Foundation

let S: [Character] = readLine()!.reversed().map {
    switch $0 {
    case "6":
        return "9"
    case "9":
        return "6"
    default:
        return $0
    }
}

print(S.map(String.init).joined())
