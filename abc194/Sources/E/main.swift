// E - Mex Min
// https://atcoder.jp/contests/abc194/tasks/abc194_e
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

var AA: [[Int]] = .init(repeating: [], count: N+1)
for (i, a) in A.enumerated() {
    AA[a].append(i)
}

func check(_ i: [Int]) -> Bool {
    if i.isEmpty {
        return false
    }
    var prev = -1
    var i = i
    i.append(N)
    for j in i {
        if j - prev > M {
            return false
        }
        prev = j
    }
    return true
}

for (i, a) in AA.enumerated()   {
    if check(a) {
        continue
    } else {
        print(i)
        exit(0)
    }
}
print(N)
