// 044 - Shift and Swapping（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_ar
// 実行制限時間: 2.0 sec
import Foundation

let (N, Q): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var shift = 0
for _ in 0..<Q {
    var (T, x, y): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()
    x -= 1
    y -= 1

    switch T {
    case 1:
        A.swapAt((x - shift + N) % N, (y - shift + N) % N)
    case 2:
        shift += 1
    case 3:
        print(A[(x - shift + N) % N])
    default:
        break
    }

//    print((0..<N).map { i in A[(i - shift + N) % N] })
}
