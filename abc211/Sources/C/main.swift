// C - chokudai
// https://atcoder.jp/contests/abc211/tasks/abc211_c
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


let S = readLine()!

var ans = 0

var dp: Array2D = .init(repeating: 0, S.count + 1, "chokudai@".count)
dp[0, 0] = 1

for (ci, ce) in "chokudai@".enumerated() {
    for (si, se) in S.enumerated() {
        dp[si + 1, ci] %= 1000000007
        dp[si + 1, ci] += dp[si, ci]
        if ce == se {
            dp[si + 1, ci + 1] %= 1000000007
            dp[si + 1, ci + 1] += dp[si, ci]
        }
    }
}
//print(dp)
dp[S.count, "chokudai".count] %= 1000000007
print(dp[S.count, "chokudai".count])
