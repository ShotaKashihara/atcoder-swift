// C - 1-SAT
// https://atcoder.jp/contests/abc187/tasks/abc187_c
import Foundation

let n = Int(readLine()!)!
var s = (0..<n).map { _ in readLine()! }

var a1 = Set<String>()
var a2 = Set<String>()
s.forEach { ss in
    if ss.hasPrefix("!") {
        var sa = ss
        sa.removeFirst()
        a2.insert(sa)
    } else {
        a1.insert(ss)
    }
}

var res = "satisfiable"
a1.forEach { ss in
    if a2.contains(ss) {
        res = ss
    }
}
print(res)
