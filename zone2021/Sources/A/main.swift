// A - UFO Invasion
// https://atcoder.jp/contests/zone2021/tasks/zone2021_a
// 実行制限時間: 2.0 sec
import Foundation

var S = readLine()!
var count = 0

while !S.isEmpty {
    if S.hasPrefix("ZONe") {
        count += 1
        S.removeFirst(4)
    } else {
        S.removeFirst()
    }
}

print(count)
