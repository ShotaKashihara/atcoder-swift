// E - Peddler
// https://atcoder.jp/contests/abc188/tasks/abc188_e
import Foundation

let (n, m): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var xy = (0..<m).map { _ -> (Int, Int) in
    let l = readLine()!.split(separator: " ").map(String.init)
    return (Int(l[0])! - 1, Int(l[1])! - 1)
}

var G = [[Int]].init(repeating: [], count: n)
for (x, y) in xy {
    G[y].append(x)
}
var largest = [Int].init(repeating: Int.min, count: n)
var profit = Int.min
// グラフの末端から見ていく
for i in (0..<n).reversed() {
    // 町i に行く道をすべて調べる
    for g in G[i] {
        // 町i に行ける 町gの重みを更新する
        largest[g] = max(largest[g], a[i], largest[i])
    }
    if largest[i] != Int.min {
        profit = max(profit, largest[i] - a[i])
    }
}

print(profit)
