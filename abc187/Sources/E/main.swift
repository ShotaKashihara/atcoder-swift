// E - Through Path
// https://atcoder.jp/contests/abc187/tasks/abc187_e
import Foundation

let n = Int(readLine()!)!
let (a, b) = (0..<n-1).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])! - 1)
    r.1.append(Int(l[1])! - 1)
}
let q = Int(readLine()!)!
let (t, e, x) = (0..<q).reduce(into: ([Int](), [Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])! - 1)
    r.2.append(Int(l[2])!)
}

// ある頂点からつながっている点のリスト
var graph = [[Int]].init(repeating: [], count: n)
for i in 0..<n-1 {
    graph[a[i]].append(b[i])
    graph[b[i]].append(a[i])
}

// それぞれの頂点の depth を数える
// 0-index 起点
var depth = [Int].init(repeating: -1, count: n)
func depthDFS(_ n: Int, d: Int) {
    depth[n] = d
    for i in graph[n] where depth[i] == -1 {
        depthDFS(i, d: d + 1)
    }
}
depthDFS(0, d: 0)

// すべての辺の差分を管理する
var imos = [Int].init(repeating: 0, count: n)
var all = 0
for i in 0..<q {
    let va = a[e[i]]
    let vb = b[e[i]]
    
    if t[i] == 1 {
        // va のほうが子孫なら
        if depth[va] > depth[vb] {
            imos[va] += x[i]
        } else {
            all += x[i]
            imos[vb] -= x[i]
        }
    } else {
        // va のほうが子孫なら
        if depth[vb] > depth[va] {
            imos[vb] += x[i]
        } else {
            all += x[i]
            imos[va] -= x[i]
        }
    }
}

// 根から子孫に向かって累積和
func imosDFS(_ n: Int, now: Int) {
    let _now = now + imos[n]
    imos[n] = _now
    for i in graph[n] where depth[n] < depth[i] {
        imosDFS(i, now: _now)
    }
}
imosDFS(0, now: 0)

for i in imos {
    print(i + all)
}













