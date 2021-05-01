// D - Message from Aliens
// https://atcoder.jp/contests/zone2021/tasks/zone2021_d
// 実行制限時間: 2.0 sec
import Foundation

var S = readLine()!
var T = ""

var flip = false

for s in S {
    if s == "R" {
        flip.toggle()
    } else {
        if flip {
            if T.first == s {
                T.removeFirst()
            } else {
                T = String(s) + T
            }
        } else{
            if T.last == s {
                T.removeLast()
            } else {
                T.append(s)
            }
        }
    }
}

if flip {
    T = String(T.reversed())
}

print(T)
