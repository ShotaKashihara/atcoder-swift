// B - Sign of Friendship
// https://atcoder.jp/contests/zone2021/tasks/zone2021_b
// 実行制限時間: 2.0 sec
import Foundation

let (N, D, H): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

let (d, h) = (0..<N).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
}

var ans = 0.0

for i in 0..<N {
    let a = Double(H - h[i]) / Double(D - d[i])
    let b = Double(H) - a * Double(D)
    ans = max(ans, b)
}

print(ans)
