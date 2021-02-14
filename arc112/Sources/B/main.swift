// B - -- - B
// https://atcoder.jp/contests/arc112/tasks/arc112_b
import Foundation

let (b, c): (Int, Int) = { let line = readLine()!.components(separatedBy: " "); return (Int(line[0])!, Int(line[1])!) }()

if b > c/2 || -b < (c-1)/2 { // あやしい
    print(3 + 2*(c-2))
    exit(0)
}

if b <= 0 {
    print(c + -b * 2)
} else {
    print(c + b * 2 - 1)
}
