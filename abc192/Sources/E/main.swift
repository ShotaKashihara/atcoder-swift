// E - Train
// https://atcoder.jp/contests/abc192/tasks/abc192_e
import Foundation
typealias Graph = [Vertex]
typealias Vertex = [Edge]
struct Edge {
    let next, weight, time: Int
}

struct Dijkstra {
    /// 計算中の頂点の状態
    struct VertexState: Comparable {
        /// 頂点の index
        let vertex: Int
        /// 始点からの距離
        let distance: Int
        
        static func < (lhs: Self, rhs: Self) -> Bool {
            lhs.distance < rhs.distance
        }
    }
    typealias Distance = Int
    static func solve(graph: Graph, start: Int, end: Int) -> Distance {
        /// 通った頂点の始点からの距離
        /// 初期値は始点(0) とその他 (INF) で埋める
        var distance = [Int](repeating: Int.max, count: graph.count)
        distance[start] = .zero
        /// 使用済みでない頂点集合
        /// 初期値は始点(0)のみ
        /// このヒープがゼロ個になるまで `heap.pop()` を回す
        var heap = BinaryHeap<VertexState>()
        heap.insert(.init(vertex: start, distance: .zero))
        
        while let state = heap.pop() {
            guard state.distance <= distance[state.vertex] else {
                continue // この経路は最短距離を更新できないゴミ
            }
            for edge in graph[state.vertex] {
                /// 現在の距離に `Edge.weight` (重み)を加算して、次の頂点への最短距離が更新されるか確認
//                let newDistance = state.distance + edge.weight
                let newDistance = state.distance + edge.weight
                    + (edge.time - state.distance % edge.time) % edge.time
                if distance[edge.next] > newDistance {
                    distance[edge.next] = newDistance
                    heap.insert(.init(vertex: edge.next, distance: newDistance))
                }
            }
        }
        
        return distance[end]
    }
}

infix operator /+: MultiplicationPrecedence // 切り上げ
func /+ (lhs: Int, rhs: Int) -> Int {
    lhs >= 0 ? (lhs + rhs - 1) / rhs : lhs / rhs
}

struct BinaryHeap<Value: Comparable> {
    var heap = [Value]()
    
    mutating func insert(_ v: Value) {
        var k = heap.count
        heap.append(v)
        while k > 0 {
            let p = (k - 1) / 2
            if heap[p] > heap[k] {
                heap.swapAt(k, p)
                k = p
            } else {
                break
            }
        }
    }
    
    mutating func pop() -> Value? {
        guard let result = heap.first else { return nil }
        heap.swapAt(0, heap.endIndex - 1)
        heap.removeLast()
        var k = 0
        while true {
            var l = k
            for c in [k * 2 + 1, k * 2 + 2] where c < heap.count && heap[l] > heap[c] {
                l = c
            }
            if k == l {
                break
            }
            heap.swapAt(k, l)
            k = l
        }
        return result
    }
}

let (vertexCount, edgeCount, start, end): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()

/// 「頂点A から 頂点B までに重さW がかかる辺が M 個与えられる」という場合に `Graph` を構築する例
var graph = Graph(repeating: [], count: vertexCount)
(0..<edgeCount).forEach { _ in
    let (A, B, T, K): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()
    
    graph[A-1].append(.init(next: B-1, weight: T, time: K))
    // 無向グラフは両方の頂点に辺を追加
    graph[B-1].append(.init(next: A-1, weight: T, time: K))
}

let distance = Dijkstra.solve(
    graph: graph,
    start: start - 1,
    end: end - 1
)
print(distance == Int.max ? -1 : distance)
