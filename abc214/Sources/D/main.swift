// D - Sum of Maximum Weights
// https://atcoder.jp/contests/abc214/tasks/abc214_d
// 実行制限時間: 2.0 sec
import Foundation
//14*4+5*3+2*2+1

let N = Int(readLine()!)!
let (u1, v1, w1) = (0..<N-1).reduce(into: ([Int](), [Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
    r.2.append(Int(l[2])!)
}

let w = w1.sorted()

let ans = w1.enumerated().map { $0.element * ($0.offset + 1) }.reduce(0, +)
print(ans)

struct UnionFind<Element> where Element: Hashable {
    typealias Element = Element

    private var parent: [Element: Element]
    private var count: [Element: Int]

    init() {
        parent = [:]
        count = [:]
    }

    /// `v`の代表元を返す。
    ///
    /// ```
    /// var uf = HashedUnionFind<Int>()
    /// uf.unite(0, 1)
    /// uf.unite(0, 2)
    /// uf.unite(3, 4)
    /// assert(uf.find(0) == uf.find(1))
    /// assert(uf.find(0) == uf.find(2))
    /// assert(uf.find(3) == uf.find(4))
    /// ```
    ///
    /// - Complexity: 償却O(log n)
    mutating func find(_ v: Element) -> Element {
        guard let p = parent[v] else { return v }
        if v == p {
            return v
        } else {
            let newParent = find(p)
            parent[v] = newParent
            return newParent
        }
    }

    /// 頂点`u`と頂点`v`を辺で繋ぐ。
    ///
    /// - Complexity: 償却O(log n)
    mutating func unite(_ u: Element, _ v: Element) {
        var u = find(u)
        var v = find(v)
        guard u != v else { return }
        if count[u, default: 1] < count[v, default: 1] {
            swap(&u, &v)
        }
        count[u, default: 1] += count[v, default: 1]
        parent[v] = u
    }

    /// 頂点`u`が属する連結成分の頂点数を返す。
    ///
    /// ```
    /// var uf = HashedUnionFind<Int>()
    /// uf.unite(0, 1)
    /// uf.unite(0, 2)
    /// uf.unite(3, 4)
    /// assert(uf.count(0) == 3)
    /// assert(uf.count(1) == 3)
    /// assert(uf.count(2) == 3)
    /// assert(uf.count(3) == 2)
    /// assert(uf.count(4) == 2)
    /// ```
    ///
    /// - Complexity: 償却O(log n)
    mutating func count(_ u: Element) -> Int {
        count[find(u), default: 1]
    }
}

