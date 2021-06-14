// C - Tour
// https://atcoder.jp/contests/abc204/tasks/abc204_c
// 実行制限時間: 2.0 sec
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var ab: [Set<Int>] = .init(repeating: .init(), count: N)
for _ in 0..<M {
    let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    ab[A-1].insert(B-1)
}

func dfs(_ from: Int, _ ok: inout [Bool]) {
    if ok[from] {
        return
    }

    ok[from] = true

    for b in ab[from] {
        dfs(b, &ok)
    }
}

var ans = 0
for a in 0..<N {
    var ok = [Bool].init(repeating: false, count: N)
    dfs(a, &ok)
    ans += ok.filter { $0 }.count
}
print(ans)
