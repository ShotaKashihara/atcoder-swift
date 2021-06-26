// D - KAIBUNsyo
// https://atcoder.jp/contests/abc206/tasks/abc206_d
// 実行制限時間: 2.0 sec
import Foundation

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

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
var uf = UnionFind<Int>()
var count = 0
for i in 0..<N/2 {
    let left = A[i]
    let right = A[N - i - 1]
    if uf.find(left) != uf.find(right) {
        uf.unite(left, right)
        count += 1
    }
}
for i in 1...N {
    print(uf.count(i))
}
