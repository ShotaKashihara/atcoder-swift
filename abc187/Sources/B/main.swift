// B - Gentle Pairs
// https://atcoder.jp/contests/abc187/tasks/abc187_b
import Foundation

let n = Int(readLine()!)!
let xy = (0..<n).map { _ in readLine()! }.map { s -> (Double, Double) in
    let l = s.components(separatedBy: " "); return (Double(l[0])!, Double(l[1])!)
}

struct P: Hashable {
    let i: Int
    let j: Int
}

var s = Set<P>()

xy.enumerated().forEach { (o1, e1) in
    xy.enumerated().forEach { (o2, e2) in
        guard o1 > o2 else { return }
        let (x1, y1) = e1
        let (x2, y2) = e2
        let a = (y2-y1)/(x2-x1)
        
        if -1.0 <= a, a <= 1.0  {
            s.insert(.init(i: min(o1, o2), j: max(o1, o2)))
        }
    }
}

print(s.count)
