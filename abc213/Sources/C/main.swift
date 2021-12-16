// C - Reorder Cards
// https://atcoder.jp/contests/abc213/tasks/abc213_c
// 実行制限時間: 2.0 sec
import Foundation
let (H, W, N): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

let (A, B) = (0..<N).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
}

let Hs = Array(Set(A)).sorted()
let Ws = Array(Set(B)).sorted()

extension Array where Element: Comparable {
    /// ソートされた配列内で、key以上の要素の内の一番左側のインデックスを返す
    func lowerBound(_ value: Element) -> Int {
        var left = 0
        var right = self.count
        while (left < right) {
            let mid = left + (right - left) / 2
            if (self[mid] < value) {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }
}

for (h, w) in zip(A, B) {
    let hindex = Hs.lowerBound(h)
    let windex = Ws.lowerBound(w)
    print(hindex + 1, windex + 1)
}
