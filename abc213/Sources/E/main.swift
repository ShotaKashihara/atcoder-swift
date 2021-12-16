// E - Stronger Takahashi
// https://atcoder.jp/contests/abc213/tasks/abc213_e
// 実行制限時間: 2.0 sec
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

struct Array2D<Element> {
    let x: Int
    let y: Int
    private var elements: [Element]

    init(repeating: Element, _ x: Int, _ y: Int) {
        self.x = x
        self.y = y
        self.elements = [Element](repeating: repeating, count: x * y)
    }

    subscript(x: Int, y: Int) -> Element {
        get {
            elements[x + y * self.x]
        }
        set {
            elements[x + y * self.x] = newValue
        }
    }
}

extension Optional: CustomStringConvertible where Wrapped: CustomStringConvertible {
    public var description: String {
        self?.description ?? "nil"
    }
}

extension Array2D: CustomStringConvertible where Element: CustomStringConvertible {
    var padding: Int { elements.map(\.description.count).max() ?? 0 }
    var paddingStr: String { Array(repeating: " ", count: padding).joined() }
    var description: String {
        var text = "x: \(x), y: \(y)"
        for i in 0..<y {
            text += "\n"
            text += elements[i * x ..< i * x + x]
                .map { (paddingStr + $0.description).suffix(padding) }
                .joined(separator: " ")
        }
        return text
    }
    var reverseHorizon: Self {
        var a = self
        for _x in 0..<x {
            for _y in 0..<y {
                a[_x, _y] = self[x - _x - 1, _y]
            }
        }
        return a
    }
}

let (H, W): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var board = Array2D(repeating: false, W, H)
for h in 0..<H {
    let L = Array(readLine()!).map(String.init)
    for w in 0..<W {
        board[w, h] = L[w] == "."
    }
}

struct Pair: Comparable {
    static func == (lhs: Pair, rhs: Pair) -> Bool {
        lhs.point == rhs.point
            && lhs.cost == rhs.cost
    }

    static func < (lhs: Pair, rhs: Pair) -> Bool {
        lhs.cost < rhs.cost
    }

    let point: (Int, Int)
    let cost: Int
}

var distance = Array2D(repeating: Int.max, W, H)
var heap = BinaryHeap<Pair>()
distance[0, 0] = 0
heap.insert(Pair(point: (0, 0), cost: 0))

while let q = heap.extractMin() {
    // 上下左右のコスト０で行けるところ
    for (dw, dh) in [(1,0), (-1,0), (0,1), (0,-1)] {
        let w = q.point.0 + dw
        let h = q.point.1 + dh
        guard (0..<W).contains(w), (0..<H).contains(h) else {
            continue
        }
        if board[w, h] {
            if distance[w, h] > distance[q.point.0, q.point.1] {
                distance[w, h] = distance[q.point.0, q.point.1]
                heap.insert(.init(point: (w, h), cost: q.cost + 0))
            }
        }
    }

    // 1回パンチ (+1cost) したら行けるところ
    //  ***
    // ** **
    // * c *
    // ** **
    //  ***
    let dwdh = [
                 (-1, 2), (0, 2), (1, 2),
        (-2, 1), (-1, 1),         (1, 1), (2, 1),
        (-2, 0),                          (2, 0),
        (-2,-1), (-1,-1),         (1,-1), (2,-1),
                 (-1,-2), (0,-2), (1,-2),
    ]
    for (dw, dh) in dwdh {
        let w = q.point.0 + dw
        let h = q.point.1 + dh
        guard (0..<W).contains(w), (0..<H).contains(h) else {
            continue
        }
        if distance[w, h] > distance[q.point.0, q.point.1] + 1 {
            distance[w, h] = distance[q.point.0, q.point.1] + 1
            heap.insert(.init(point: (w, h), cost: q.cost + 1))
        }
    }
}

//print(cost)
print(distance[W-1, H-1])
