// C - Squared Error
// https://atcoder.jp/contests/abc194/tasks/abc194_c
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

//var sum = 0
//for i in 0..<N {
//    for j in i..<N {
//        guard i != j else { continue }
//        let diff = A[i] - A[j]
//        sum += diff * diff
//    }
//}
//print(sum)

var total = 0
var prev = 0
var prev_2 = 0

for i in 0..<N {
    total += i * A[i] * A[i] - 2 * A[i] * prev + prev_2
    prev += A[i]
    prev_2 += A[i] * A[i]
}

print(total)
