// E - Amusement Park
// https://atcoder.jp/contests/abc216/tasks/abc216_e
// 実行制限時間: 2.0 sec
import Foundation

let (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
A.sort()

// 終了条件:
// 1. 楽しめるアトラクションが１つもない
// 2. K 回以上になった

// 一番楽しいやつに乗る
// 一番楽しいやつが複数ある可能性もある

var score = 0
var k = 0

let last = A.last!
let count = A.filter { last == $0 }.count
A.removeLast(count)
let next = A.last ?? 0

// 次のアトラクションと同じ楽しさになるまで遊ぶ
// あるいは K 回まで遊ぶ
let add_count = (last - next) * count
if k + add_count > K {
    k += add_count
    score += 
} else {

}



//struct Array2D<Element> {
//    let x: Int
//    let y: Int
//    private var elements: [Element]
//
//    init(repeating: Element, _ x: Int, _ y: Int) {
//        self.x = x
//        self.y = y
//        self.elements = [Element](repeating: repeating, count: x * y)
//    }
//
//    subscript(x: Int, y: Int) -> Element {
//        get {
//            elements[x + y * self.x]
//        }
//        set {
//            elements[x + y * self.x] = newValue
//        }
//    }
//}
//
//extension Optional: CustomStringConvertible where Wrapped: CustomStringConvertible {
//    public var description: String {
//        self?.description ?? "nil"
//    }
//}
//
//extension Array2D: CustomStringConvertible where Element: CustomStringConvertible {
//    var padding: Int { elements.map(\.description.count).max() ?? 0 }
//    var paddingStr: String { Array(repeating: " ", count: padding).joined() }
//    var description: String {
//        var text = "x: \(x), y: \(y)"
//        for i in 0..<y {
//            text += "\n"
//            text += elements[i * x ..< i * x + x]
//                .map { (paddingStr + $0.description).suffix(padding) }
//                .joined(separator: " ")
//        }
//        return text
//    }
//    var reverseHorizon: Self {
//        var a = self
//        for _x in 0..<x {
//            for _y in 0..<y {
//                a[_x, _y] = self[x - _x - 1, _y]
//            }
//        }
//        return a
//    }
//}
//
//struct Score {
//    var 満足度: Int
//    var minus楽しさ: [Int]
//
//    init(_ m: Int, _ n: [Int]) {
//        self.満足度 = m
//        self.minus楽しさ = n
//    }
//}
//
//var dp = Array2D<Score>(repeating: .init(Int.min, .init(repeating: 0, count: N)), N, K + 1)
//for k in 0...K {
//    dp[0, k].満足度 = 0
//}
//
//
//for k in 1...K {
//    for n in 0..<N {
//        // 載った場合
//        let a1 = dp[n, k-1].満足度 + A[n] - dp[n, k-1].minus楽しさ[n]
//        if a1 > dp[n, k].満足度 {
//            var mi = dp[n, k-1].minus楽しさ
//            mi[n] += 1
//            dp[n, k] = .init(a1, mi)
//        }
//        // 載らなかった場合
//        if n > 0 {
//            if dp[n-1, k].満足度 > dp[n, k].満足度 {
//                dp[n, k] = dp[n-1, k]
//            }
//        }
//    }
//}
//
//print(dp[N-1, K].満足度)
