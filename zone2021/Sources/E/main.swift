// E - Sneaking
// https://atcoder.jp/contests/zone2021/tasks/zone2021_e
// 実行制限時間: 2.0 sec
import Foundation

let (R, C): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

struct Array2D<Element> {
    let n1: Int
    let n2: Int
    private var elements: [Element]
    
    init(repeating: Element, _ n1: Int, _ n2: Int) {
        self.n1 = n1
        self.n2 = n2
        self.elements = [Element](repeating: repeating, count: n1 * n2)
    }
    
    subscript(i: Int, j: Int) -> Element {
        get {
            elements[i * n2 + j]
        }
        set {
            elements[i * n2 + j] = newValue
        }
    }
}

var A = Array2D(repeating: 0, R, C-1)
var B = Array2D(repeating: 0, R-1, C)

for r in 0..<R {
    let a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
    for c in 0..<C-1 {
        A[r, c] = a[c]
    }
}

for r in 0..<R-1 {
    let b = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
    for c in 0..<C {
        B[r, c] = b[c]
    }
}

struct Array3D<Element> {
    let n1: Int
    let n2: Int
    let n3: Int
    private var elements: [Element]
 
    init(repeating: Element, _ n1: Int, _ n2: Int, _ n3: Int) {
        self.n1 = n1
        self.n2 = n2
        self.n3 = n3
        self.elements = [Element](repeating: repeating, count: n1 * n2 * n3)
    }
 
    subscript(i: Int, j: Int, k: Int) -> Element {
        get {
            elements[(i * n2 + j) * n3 + k]
        }
        set {
            elements[(i * n2 + j) * n3 + k] = newValue
        }
    }
}

typealias Graph = Array3D<Vertex>
typealias Vertex = [Edge]
struct Edge {
    let next_r, next_c, to_up, weight: Int
}

struct Dijkstra {
    /// 計算中の頂点の状態
    struct VertexState: Comparable {
        /// 頂点の index
        let r: Int
        let c: Int
        let up: Int
        /// 始点からの距離
        let distance: Int
        
        static func < (lhs: Self, rhs: Self) -> Bool {
            lhs.distance < rhs.distance
        }
    }
    typealias Distance = Int
    static func solve(graph: Graph) -> Distance {
        /// 通った頂点の始点からの距離
        /// 初期値は始点(0) とその他 (INF) で埋める
        var distance = Array3D(repeating: Int.max, R, C, 2)
        distance[0, 0, 0] = .zero
        /// 使用済みでない頂点集合
        /// 初期値は始点(0)のみ
        /// このヒープがゼロ個になるまで `heap.pop()` を回す
        var heap = BinaryHeap<VertexState>()
        heap.insert(.init(r: 0, c: 0, up: 0, distance: .zero))
        
        while let state = heap.pop() {
            guard state.distance <= distance[state.r, state.c, state.up] else {
                continue // この経路は最短距離を更新できないゴミ
            }
            for edge in graph[state.r, state.c, state.up] {
                /// 現在の距離に `Edge.weight` (重み)を加算して、次の頂点への最短距離が更新されるか確認
                let newDistance = state.distance + edge.weight
                if distance[edge.next_r, edge.next_c, edge.to_up] > newDistance {
                    distance[edge.next_r, edge.next_c, edge.to_up] = newDistance
                    heap.insert(.init(r: edge.next_r, c: edge.next_c, up: edge.to_up, distance: newDistance))
                }
            }
//            print(heap)
        }
        return distance[R-1, C-1, 0]
    }
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

var graph = Graph(repeating: [], R, C, 2)

for r in 0..<R {
    for c in 0..<C {
        // 東
        if c < C-1 {
            graph[r, c, 0].append(.init(next_r: r, next_c: c+1, to_up: 0, weight: A[r, c]))
        }
        // 西
        if c > 0 {
            graph[r, c, 0].append(.init(next_r: r, next_c: c-1, to_up: 0, weight: A[r, c-1]))
        }
        // 南
        if r < R-1 {
            graph[r, c, 0].append(.init(next_r: r+1, next_c: c, to_up: 0, weight: B[r, c]))
        }
        // 上界
        graph[r, c, 0].append(.init(next_r: r, next_c: c, to_up: 1, weight: 1))
    }
}

for r in 0..<R {
    for c in 0..<C {
        // 北
        if r > 0 {
            graph[r, c, 1].append(.init(next_r: r-1, next_c: c, to_up: 1, weight: 1))
        }
        // 下界
        graph[r, c, 1].append(.init(next_r: r, next_c: c, to_up: 0, weight: 0))
    }
}

let distance = Dijkstra.solve(graph: graph)
print(distance)
