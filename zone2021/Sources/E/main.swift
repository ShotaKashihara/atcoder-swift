// E - Sneaking
// https://atcoder.jp/contests/zone2021/tasks/zone2021_e
// 実行制限時間: 2.0 sec
import Foundation

struct BinaryHeap<Value: Comparable> {
    var heap: [Value]
    
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
    let vertex: Int // 頂点
    let distance: Int // 距離
    
    static func < (lhs: State, rhs: State) -> Bool {
        lhs.distance < rhs.distance
    }
}

struct Edge {
    let next: Int // 向き先
    let weight: Int // 重み
}

func dijkstra(start: Int, vertexCount: Int, edges: [[Edge]]) -> [Int] {
    var heap = BinaryHeap<State>(heap: [.init(vertex: start, distance: 0)])
    var distance = [Int].init(repeating: Int.max, count: vertexCount)
    distance[start] = 0
    
    while let state = heap.extractMin() {
        guard state.distance <= distance[state.vertex] else {
            continue /// 他の最短経路が見つかった
        }
        for edge in edges[state.vertex] {
            ///
            /// 重みの加算
            ///
            let newDistance = state.distance + edge.weight
            if distance[edge.next] > newDistance {
                distance[edge.next] = newDistance
                heap.insert(.init(vertex: edge.next, distance: newDistance))
            }
        }
    }
    
    return distance
}

let (R, C): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let vertexCount = R*C
let edgeCount = Int.max
let start = 0
let end = 0

var G: [[Edge]] = .init(repeating: [], count: vertexCount)
(0..<edgeCount).forEach { _ in
    let A = Int(readLine()!)! - 1
    let B = Int(readLine()!)! - 1
    let W = Int(readLine()!)!
    
    G[A].append(.init(next: B, weight: W))
    G[B].append(.init(next: A, weight: W))
}

let distance = dijkstra(start: start, vertexCount: vertexCount, edges: G)
print(distance[end])

