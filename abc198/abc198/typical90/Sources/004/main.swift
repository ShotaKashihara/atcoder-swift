// 004 - Cross Sum（★2）
// https://atcoder.jp/contests/typical90/tasks/typical90_d
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

extension Array2D where Element == Int {
    func toRuisekiwa() -> Self {
        var B = Array2D(repeating: 0, self.x, self.y)
        for h in 0 ..< self.y {
            for w in 0 ..< self.x {
                B[w, h] = self[w, h]
                if w > 0 {
                    B[w, h] += B[w - 1, h]
                }
                if h > 0 {
                    B[w, h] += B[w, h - 1]
                }
                if w > 0, h > 0 {
                    B[w, h] -= B[w - 1, h - 1]
                }
            }
        }
        return B
    }

    /// from: (x1, y2) から to: (x2, y2) の矩形の累積和を返す
    func ruisekiwa(from x1: Int, _ y1: Int, to x2: Int, _ y2: Int) -> Element {
        let leftup = x1 == 0 || y1 == 0 ? 0 : self[x1 - 1, y1 - 1]
        let rightup = x1 == 0 ? 0 : self[x1 - 1, y2]
        let leftdown = y1 == 0 ? 0 : self[x2, y1 - 1]
        return self[x2, y2] - rightup - leftdown + leftup
    }
}

let (H, W): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

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

var A = Array2D(repeating: 0, W, H)
for h in 0..<H {
    let C = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
    for w in 0..<W {
        A[w, h] = C[w]
    }
}

var B = A.toRuisekiwa()

for h in 0..<H {
    var string = ""
    for w in 0..<W {
        // (w, h) の十字の和は
        // board の全部の和から
        var sum = B[W - 1, H - 1]
        // (w, h) の左上を引く
        if w > 0, h > 0 {
            sum -= B.ruisekiwa(from: 0, 0, to: w - 1, h - 1)
        }
        // (w, h) の右上を引く
        if w < W - 1, h > 0 {
            sum -= B.ruisekiwa(from: w + 1, 0, to: W-1, h-1)
        }

        // (w, h) の左下を引く
        if w > 0, h < H - 1 {
            sum -= B.ruisekiwa(from: 0, h+1, to: w-1, H-1)
        }

        // (w, h) の左下を引く
        if w < W - 1, h < H - 1 {
            sum -= B.ruisekiwa(from: w + 1, h + 1, to: W-1, H-1)
        }

        string += w == 0 ? "\(sum)" : " \(sum)"
    }
    print(string)
}

//print(A)
//print(B)
//print(C)

//5 5
//1 1 1 1 1
//1 1 1 1 1
//1 1 1 1 1
//1 1 1 1 1
//1 1 1 1 1
