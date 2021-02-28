// E - Train
// https://atcoder.jp/contests/abc192/tasks/abc192_e
import Foundation

struct BinaryHeap<Value: Comparable> {
    var heap: [Value]
    
    init() {
        self.heap = []
    }
    
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
    
    mutating func extractMin() -> Value? {
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

struct State: Comparable {
    let vertex: Int // ちょうてん
    let distance: Int // きょり
    
    static func < (lhs: State, rhs: State) -> Bool {
        lhs.distance < rhs.distance
    }
}

struct Edge {
    let next: Int // 向き先
    let weight: Int // 重み
    let K: Int
}

func dijkstra(start: Int, vertexCount: Int, edges: [[Edge]]) -> [Int] {
    var heap = BinaryHeap<State>()
    heap.insert(.init(vertex: start, distance: 0))
    var distance = [Int].init(repeating: Int.max, count: vertexCount)
    distance[start] = 0
    
    while let state = heap.extractMin() {
        guard state.distance <= distance[state.vertex] else {
            continue // 他の最短経路が見つかった
        }
        for edge in edges[state.vertex] {
            ///
            /// 重みの加算
            ///
//            let newDistance = state.distance + edge.weight
            let newDistance = state.distance /+ edge.K * edge.K + edge.weight
            if distance[edge.next] > newDistance {
                distance[edge.next] = newDistance
                heap.insert(.init(vertex: edge.next, distance: newDistance))
            }
        }
    }
    
    return distance
}

infix operator /+: MultiplicationPrecedence // 切り上げ
func /+ (lhs: Int, rhs: Int) -> Int {
    lhs >= 0 ? (lhs + rhs - 1) / rhs : lhs / rhs
}

let (N, M, X, Y): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])! - 1, Int(l[3])! - 1) }()
let vertexCount = N
let edgeCount = M
var G: [[Edge]] = .init(repeating: [], count: vertexCount)
(0..<edgeCount).forEach { _ in
    let (A, B, T, K): (Int, Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!, Int(l[3])!) }()
    
    G[A-1].append(.init(next: B-1, weight: T, K: K))
    G[B-1].append(.init(next: A-1, weight: T, K: K))
}

let distance = dijkstra(start: X, vertexCount: vertexCount, edges: G)
print(distance[Y] == Int.max ? -1 : distance[Y])
