// E - Safety Journey
// https://atcoder.jp/contests/abc212/tasks/abc212_e
// 実行制限時間: 2.0 sec
import Foundation

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


let (N, M, K): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

var broken: [[Int]] = .init(repeating: [], count: N)
for _ in 0..<M {
    let (U, V): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!-1, Int(line[1])!-1) }()
    broken[U].append(V)
    broken[V].append(U)
}

let mod = 998244353
var dp = Array2D.init(repeating: 0, K + 1, N)
//var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: N), count: K + 1)

dp[0,0] = 1
for k in 0..<K {
    // 配るDP から 貰うDP に変換
//    let sum = dp[k].reduce(0, +)
    let sum = (0..<N).map { i in dp[k,i] }.reduce(0, +)
    for n in 0..<N {
        dp[k+1,n] = sum - dp[k,n]
        for b in broken[n] {
            dp[k+1,n] -= dp[k,b]
        }
        dp[k+1,n] %= mod
    }
}
print(dp[K,0] % mod)
