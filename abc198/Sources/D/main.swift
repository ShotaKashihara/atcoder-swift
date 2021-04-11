// D - Send More Money
// https://atcoder.jp/contests/abc198/tasks/abc198_d
// 実行制限時間: 5.0 sec
import Foundation

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

// "abc"
let allChars = Array(Set(S1 + S2 + S3))

if allChars.count > 10 {
    print("UNSOLVABLE")
    exit(0)
}

// "abc" -> "012"
let s1 = S1.map { allChars.firstIndex(of: $0)! }
let s2 = S2.map { allChars.firstIndex(of: $0)! }
let s3 = S3.map { allChars.firstIndex(of: $0)! }
for arr in (0 ..< 10).permutations {
    if arr[s1.first!] == 0 || arr[s2.first!] == 0 || arr[s3.first!] == 0 {
        continue
    }
    let t1 = s1.map { arr[$0] }.reduce(0) { x, y in x * 10 + y }
    let t2 = s2.map { arr[$0] }.reduce(0) { x, y in x * 10 + y }
    let t3 = s3.map { arr[$0] }.reduce(0) { x, y in x * 10 + y }
    
    if t1 + t2 == t3 {
        print(t1)
        print(t2)
        print(t3)
        exit(0)
    }
}
print("UNSOLVABLE")
