// A - B = C
// https://atcoder.jp/contests/arc112/tasks/arc112_a
import Foundation

let t = Int(readLine()!)!
let cases = (0..<t).map { _ in readLine()! }.map { s -> (Int, Int) in
    let l = s.components(separatedBy: " "); return (Int(l[0])!, Int(l[1])!)
}

cases.forEach { (l: Int, r: Int) in
    let a1 = (r-l-l+2)
    let a2 = (r-l-l+1)
    guard a1 > 0, a2 > 0 else { return print(0) }
    print(a1 * a2 / 2)
}
