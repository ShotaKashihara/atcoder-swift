// 048 - I will not drop out（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_av
// 実行制限時間: 2.0 sec
import Foundation

let (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var AB = [Int].init(repeating: 0, count: 2 * N)

for i in 0..<N {
    let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    AB[i * 2] = A - B
    AB[i * 2 + 1] = B
}

AB.sort()
//print(AB)

print((0..<K).map { i in AB[2 * N - 1 - i] }.reduce(0, +))
