// C - One More aab aba baa
// https://atcoder.jp/contests/abc215/tasks/abc215_c
// 実行制限時間: 2.0 sec
import Foundation

let (S, K): (String, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (line[0], Int(line[1])!) }()

/// `(0...10).permutations`
struct PermutationSequence<Element: Comparable>: Sequence {
    private let elements: [Element]

    struct Iterator: IteratorProtocol {
        var elements: [Element]
        var finished = false

        mutating func next() -> [Element]? {
            guard !finished else { return nil }
            let result = elements
            var i = elements.count - 2
            while i >= 0, elements[i] >= elements[i + 1] {
                i -= 1
            }
            if i < 0 {
                finished = true
            } else {
                var j = elements.count - 1
                while elements[i] >= elements[j] {
                    j -= 1
                }
                elements.swapAt(i, j)
                elements[(i + 1)...].reverse()
            }
            return result
        }
    }

    init<Elements: Sequence>(elements: Elements) where Elements.Element == Element {
        self.elements = Array(elements)
    }

    func makeIterator() -> Iterator {
        return Iterator(elements: elements)
    }
}

extension Sequence where Element: Comparable {
    var permutations: PermutationSequence<Element> {
        PermutationSequence(elements: self)
    }
}


print(Array(S.sorted().permutations)[K-1].map(String.init).joined())
