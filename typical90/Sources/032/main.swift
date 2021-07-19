// 032 - AtCoder Ekiden（★3）
// https://atcoder.jp/contests/typical90/tasks/typical90_af
// 実行制限時間: 5.0 sec

import Foundation

/// `nextPermutation`
/// 全部試したい時はsortすること！！！
/// `repeat {`
///      処理
/// `} while (array.nextPermutation())`
extension Array where Element: Comparable{
    mutating func nextPermutation() -> Bool{
        let size = self.count
        var front = size-2, back = size-1
        assert(size >= 2, "Array should contain two or more elements to compute next permutation.")
        //昇順になっている箇所を探す
        while(front >= 0){
            if(self[front] < self[front + 1]){
                break
            }
            front -= 1
        }
        if(front < 0){
            return false
        }
        //self[front]より大きい要素を探す
        let frontNum = self[front]
        while(back >= 0){
            if(frontNum < self[back]){
                break
            }
            back -= 1
        }
        //入れ替え
        swapAt(front, back)
        //front+1以降を反転
        var i = 1
        while(front + i < size - i){
            swapAt(front + i, size - i)
            i += 1
        }
        return true
    }
}

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


let N = Int(readLine()!)!
var A: [[Int]] = .init(repeating: .init(repeating: 0, count: N), count: N)

for i in 0..<N {
    let a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
    A[i] = a
}

let M = Int(readLine()!)!

var pairing: Set<Int> = []
for _ in 0..<M {
    let (x, y): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!-1, Int(line[1])!-1) }()
    //Hash化のため100x + yとしてsetに入れる
    pairing.insert(100*x + y)
}

var order = Array(0..<N)
/// 全パターン試してみる
var ans = Int.max
repeat {
    let i = order
    // ダメなパターンがないかチェック
    var success = true
    for ii in 0..<N-1 {
        let a = min(i[ii], i[ii+1])
        let b = max(i[ii], i[ii+1])
        if pairing.contains(100*a+b){

        }
        if ok[a][b] == false {

        }
    }
    if success {
        let total = i.enumerated().map { A[$0.element][$0.offset] }.reduce(0, +)
        ans = min(ans, total)
    }


} while (order.nextPermutation())


print(ans == Int.max ? -1 : ans)
