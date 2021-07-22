// D - National Railway
// https://atcoder.jp/contests/abc210/tasks/abc210_d
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

let (H, W, C): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

var A = Array2D(repeating: 0, W, H)

for h in 0..<H {
    let a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
    for w in 0..<W {
        A[w, h] = a[w]
    }
}

// (x, y) を駅B として、(x-1, y) から線路を引いた場合と (x, y-1) から線路を引いた場合を考える
var ans = Int.max

func solve(_ A: Array2D<Int>) {
    // (x, y) まで線路を敷いたときの駅Aの建設コスト + 線路のコストの最小値
    var dp = Array2D(repeating: Int.max - C, W, H)

    for h in 0..<H {
        for w in 0..<W {
            dp[w, h] = A[w, h]
            if w > 0 {
                dp[w, h] = min(dp[w - 1, h] + C, dp[w, h])
            }
            if h > 0 {
                dp[w, h] = min(dp[w, h - 1] + C, dp[w, h])
            }
        }
    }
    for h in 0..<H {
        for w in 0..<W {
            if w > 0 {
                ans = min(ans, A[w, h] + dp[w - 1, h] + C)
            }
            if h > 0 {
                ans = min(ans, A[w, h] + dp[w, h - 1] + C)
            }
        }
    }
}

solve(A)
solve(A.reverseHorizon)

print(ans)
