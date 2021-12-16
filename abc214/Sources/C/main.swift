// C - Distribution
// https://atcoder.jp/contests/abc214/tasks/abc214_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let S = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let T = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

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

struct Work: Comparable {
    static func < (lhs: Work, rhs: Work) -> Bool {
        return lhs.t < rhs.t
    }

    let t, i_sunuke: Int
}

var heap = BinaryHeap<Work>()
for (i, t) in T.enumerated() {
    heap.insert(.init(t: t, i_sunuke: i))
}

var result = [Int].init(repeating: 0, count: N)
var cnt = 0
while let work = heap.extractMin() {
//    print("t: ", work.t, "sunuke", work.i_sunuke)
    if result[work.i_sunuke] == 0 {
        result[work.i_sunuke] = work.t
        cnt += 1
        if cnt == N {
            break
        }
    }
    heap.insert(.init(t: work.t + S[work.i_sunuke], i_sunuke: work.i_sunuke + 1 == N ? 0 : work.i_sunuke + 1))
}

for t in result {
    print(t)
}
