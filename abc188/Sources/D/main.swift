// D - Snuke Prime
// https://atcoder.jp/contests/abc188/tasks/abc188_d
import Foundation

let (N, C): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
let (s, e, c) = (0..<N).reduce(into: ([Int](), [Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])! - 1)
    r.1.append(Int(l[1])! - 1)
    r.2.append(Int(l[2])!)
}

// n日目に +c円追加で払う
var imos = [Int: Int]()
for i in 0..<N {
    imos[s[i]] = (imos[s[i]] ?? 0) + c[i]
    imos[e[i]+1] = (imos[e[i]+1] ?? 0) - c[i]
}

var sum = 0
var current = -1
var value = 0
let imoss = Array(imos.sorted(by: { $0.key < $1.key }).enumerated())
for i in 0..<imoss.count-1 {
    // i...i+1 のdays
    let day = imoss[i+1].element.key - imoss[i].element.key
    value += imoss[i].element.value
    sum += day * (value > C ? C : value)
}

print(sum)
