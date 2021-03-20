// E - Filters
// https://atcoder.jp/contests/abc196/tasks/abc196_e
// 実行制限時間: 2.0 sec
import Foundation


//print(max(3, min(-3, 0)))
//print(min(-3, max(3, 0)))

//let a = Array(-100...100)
//print(a.map(String.init).joined(separator: " "))

let N = Int(readLine()!)!
let (A, T) = (0..<N).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
}
let Q = Int(readLine()!)!
let X = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var offset = 0
var _max = Int.min
var _min = Int.max
var last: Last?

enum Last {
    case min, max
}

for i in 0...N-1 { // 2x10^5
    let a = A[i]
    let t = T[i]
    switch t {
    case 1:
        if _max != Int.min {
            _max += a
        }
        if _min != Int.max {
            _min += a
        }
        offset += a
    case 2:
        _max = max(_max, a)
        _min = max(_min, a)
        last = .max
    case 3:
        _max = min(_max, a)
        _min = min(_min, a)
        last = .min
    default:
        exit(-1)
    }
}

for x in X { // 2x10^5
    // ここを logN 以下で解きたい
//    let a = true
    let a = false
    if a {
        var fx = x
        for i in 0...N-1 { // 2x10^5
            let a = A[i]
            let t = T[i]
            switch t {
            case 1:
                fx = fx + a
            case 2:
                fx = max(fx, a)
            case 3:
                fx = min(fx, a)
            default:
                exit(-1)
            }
        }
        print(fx)
    } else {
        if last == .min {
            print(min(max(x + offset, _max), _min))
        } else {
            print(max(min(x + offset, _min), _max))
        }
    }
}
//
//3
//-10 2
//10 1
//10 3
//13
//-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1

//0 -11
//0 -10
//1 -9
//2 -8
//3 -7
//4 -6
//5 -5
//6 -4
//7 -3
//8 -2
//9 -1
//10 0
//10 1

