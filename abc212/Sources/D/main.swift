// D - Querying Multiset
// https://atcoder.jp/contests/abc212/tasks/abc212_d
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

let Q = Int(readLine()!)!

var heap = BinaryHeap<Int>()
var appending = 0

for _ in 0..<Q {
    let q = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

    if q[0] == 1 {
        heap.insert(q[1] - appending)
    } else if q[0] == 2 {
        appending += q[1]
    } else if q[0] == 3 {
        print(heap.extractMin()! + appending)
    }
}
