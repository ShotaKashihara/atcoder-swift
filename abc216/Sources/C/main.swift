// C - Many Balls
// https://atcoder.jp/contests/abc216/tasks/abc216_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

var ball = N
var mp = 120
var ans = ""

while ball > 0 {
    if !ball.isMultiple(of: 2) {
        ball -= 1
        ans += "A"
    } else {
        ball /= 2
        ans += "B"
    }
}

print(String(ans.reversed()))

//10000
//5000
//2500
//1250
//625
//624
//312
//156
//78
//39
//38
//19
//18
//9
//8
//4
//2
//1
//0
