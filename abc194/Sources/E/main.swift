// E - Mex Min
// https://atcoder.jp/contests/abc194/tasks/abc194_e
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

//var _min = Int.max
//for i in 0...(N-M) {
//    let range = A[i..<i+M]
//    let range_min = range.min()!
//    let range_max = range.max()!
//    let v = range_min == 0 ? range_max + 1 : range_min - 1
//    _min = min(_min, v)
//}
//print(_min)

var _min = Int.max
var range_min = A[0..<M].min()!
var range_max = A[0..<M].max()!

for i in 0...(N-M) {
    let range = A[i..<i+M]
    if range_min > A[i+M-1] {
        range_min = A[i+M-1]
    } else if i > 0, range_min == A[i - 1] {
        range_min = range.min()!
    }
    if range_max < A[i+M-1] {
        range_max = A[i+M-1]
    } else if i > 0, range_max == A[i - 1] {
        range_max = range.max()!
    }
    let v = range_min == 0 ? range_max + 1 : range_min - 1
    _min = min(_min, v)
}
print(_min)
