// C - Min Difference
// https://atcoder.jp/contests/abc212/tasks/abc212_c
// 実行制限時間: 2.0 sec
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }.sorted()
let B = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }.sorted()

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

var ans = Int.max
for a in A {
    let index = B.lowerBound(a)
    ans = min(ans, abs(B[index] - a))
    if index > 0 {
        ans = min(ans, abs(B[index - 1] - a))
    }
}
print(ans)
