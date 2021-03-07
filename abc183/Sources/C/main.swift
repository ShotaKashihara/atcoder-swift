// C - Travel
// https://atcoder.jp/contests/abc183/tasks/abc183_c
import Foundation

let (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var T = [[Int]]()
for i in 0..<N {
    let t = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
    T.append(t)
}

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

extension Sequence {
    func permutations() -> [[Element]] {
        func _permutations<T>(of values: [T], indices: Range<Int>, result: inout [[T]]) {
            if indices.isEmpty {
                result.append(values)
                return
            }
            var values = values
            for i in indices {
                values.swapAt(indices.lowerBound, i)
                _permutations(of: values, indices: (indices.lowerBound + 1) ..< indices.upperBound, result: &result)
            }
        }

        var result: [[Element]] = []
        let values = Array(self)
        _permutations(of: values, indices: values.indices, result: &result)
        return result
    }
}


var ans = 0

for e in Array(0..<N).permutations() {
    guard e.first! == 0 else { continue }
    var sum = 0
    for i in 0..<e.count - 1 {
        sum += T[e[i]][e[i+1]]
    }
    sum += T[e[e.count-1]][e[0]]
    if sum == K {
        ans += 1
    }
}

print(ans)
