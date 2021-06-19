import Foundation

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

let (N, Q): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

// [3, 5, 6, 7]
var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let K = (0..<Q).map { _ in Int(readLine()!)! }
// [2, 3, 3, 3]
let C = A.indices.map { i in A[i] - i - 1 }

for k in K {
    let i = C.lowerBound(k)
    if i == 0 {
        print(k)
    } else {
        print(A[i - 1] + k - C[i - 1])
    }
}
