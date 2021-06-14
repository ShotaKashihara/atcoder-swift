import Foundation

extension Array where Element: Comparable {
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
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

// [2, 3, 3, 3]
let C = A.indices.map { i in A[i] - i - 1 }

for _ in 0..<Q {
    // 2
    // 3
    // 5
    let K = Int(readLine()!)!
    let i = C.lowerBound(K)
    if i == 0 {
        print(K)
    } else {
        // 3 -> 4
        //   -> A[0] + 1
        //   -> A[0] + (K - C[0])
        print(A[i - 1] + (K - C[i - 1]))
    }
}
