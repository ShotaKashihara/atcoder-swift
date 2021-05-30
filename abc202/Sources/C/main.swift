// C - Made Up
// https://atcoder.jp/contests/abc202/tasks/abc202_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let B = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
let C = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

// A と B のペアの総数を数える
var a: [Int] = .init(repeating: 0, count: N + 1)
var b: [[Int]] = .init(repeating: [], count: N + 1)
var c: [Int] = .init(repeating: 0, count: N + 1)

for i in A {
    a[i] += 1
}

for i in B.enumerated() {
    b[i.element].append(i.offset + 1)
}

for i in C {
    c[i] += 1
}

var count = 0
for aa in a.enumerated() {
    for bb in b[aa.offset] {
        count += c[bb] * aa.element
    }
}

print(count)


let (a, b, c): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

if a == b {
  print(c)
} else if b == c {
  print(a)
} else if c == a {
  print(b)
} else {
  print(0)
}
