// D - Game in Momotetsu World
// https://atcoder.jp/contests/abc201/tasks/abc201_d
// 実行制限時間: 2.0 sec
import Foundation

let (H, W): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!-1, Int(line[1])!-1) }()

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
}

extension String {
    // "ABC"[1] -> "B"
    subscript(i: Int) -> Character {
        get {
            self[index(at: i)]
        }
        set(char) {
            var characters = Array(self)
            characters[i] = char
            self = String(characters)
        }
    }
    func index(at offset: Int) -> String.Index { index(startIndex, offsetBy: offset) }
}

var board = Array2D(repeating: 0, W+1, H+1)

for h in 0...H {
    let line = readLine()!
    for w in line.enumerated() {
        board[w.offset, h] = w.element == "+" ? 1 : -1
    }
}

// ゲーム系 -> ミニマックス法
// 最後の盤面から逆順で、「1手前の最適な行動」を選択する

var dp = Array2D(repeating: 0, W+1, H+1)

// takahashi - aoki の得点
dp[W, H] = 0

for h in 0...H {
    for w in 0...W {
        if h == 0, w == 0 { continue }

        let w = W - w
        let h = H - h

        let takahashi_turn = (w + h) % 2 == 0
        if takahashi_turn {
            dp[w, h] = Int.min
            if w < W {
                dp[w, h] = max(dp[w, h], dp[w + 1, h] + board[w + 1, h])
            }
            if h < H {
                dp[w, h] = max(dp[w, h], dp[w, h + 1] + board[w, h + 1])
            }
        } else {
            dp[w, h] = Int.max
            if w < W {
                dp[w, h] = min(dp[w, h], dp[w + 1, h] - board[w + 1, h])
            }
            if h < H {
                dp[w, h] = min(dp[w, h], dp[w, h + 1] - board[w, h + 1])
            }
        }

//        print(dp)
    }
}

if dp[0, 0] > 0 {
    print("Takahashi")
} else if dp[0, 0] < 0 {
    print("Aoki")
} else {
    print("Draw")
}
