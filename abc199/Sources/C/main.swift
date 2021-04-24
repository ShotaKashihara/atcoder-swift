// C - IPFL
// https://atcoder.jp/contests/abc199/tasks/abc199_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
var S = Array(readLine()!)
let halfcount = S.count / 2
let Q = Int(readLine()!)!

var reverse = false

for _ in 1...Q {
    var (T, A, B): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!-1, Int(l[2])!-1) }()
    
    if T == 1 {
        if reverse {
            A = A >= halfcount ? A - halfcount : A + halfcount
            B = B >= halfcount ? B - halfcount : B + halfcount
        }
        S.swapAt(A, B)
    } else {
        reverse.toggle()
    }
}

if reverse {
    S = Array(S[halfcount...]) + Array(S[..<halfcount])
}

print(String(S))
