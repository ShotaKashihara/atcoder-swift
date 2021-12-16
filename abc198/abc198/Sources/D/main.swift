// D - Send More Money
// https://atcoder.jp/contests/abc198/tasks/abc198_d
// 実行制限時間: 5.0 sec
import Foundation
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


let S1 = readLine()!
let S2 = readLine()!
let S3 = readLine()!

// 使われる文字を列挙する
let set = Array(Set(S1 + S2 + S3))

// ここで 11 文字以上なら UNSOLVABLE
if set.count > 10 {
    print("UNSOLVABLE")
    exit(0)
}

// 使われる文字にそれぞれ 0~9 なる数値をつけ、文字列をindex数字列に変換しておく

let T1 = S1.map { set.firstIndex(of: $0)! }
let T2 = S2.map { set.firstIndex(of: $0)! }
let T3 = S3.map { set.firstIndex(of: $0)! }

// [0-9].next_permutations で全列挙する
for p in (0...9).permutations {
    // 先頭が 0 なら無視
    if p[T1.first!] == 0 || p[T2.first!] == 0 || p[T3.first!] == 0 {
        continue
    }

    // 数字列を実際の整数に変換する
    let N1 = T1.map { p[$0] }.reduce(0) { x,y in x*10+y }
    let N2 = T2.map { p[$0] }.reduce(0) { x,y in x*10+y }
    let N3 = T3.map { p[$0] }.reduce(0) { x,y in x*10+y }
    if N1 + N2 == N3 {
        print(N1)
        print(N2)
        print(N3)
        exit(0)
    }
}
print("UNSOLVABLE")
