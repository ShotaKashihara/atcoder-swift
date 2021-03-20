// C - Doubled
// https://atcoder.jp/contests/abc196/tasks/abc196_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

infix operator **: BitwiseShiftPrecedence
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

var count = 0
for i in 1... {
    // i*2 桁を全探索する
    let kami = i * 10 ** String(i).count
    let simo = Int(String(String(i)))!
    let number = kami + simo
    if number > N {
        break
    }
//    print(number)
    count += 1
}
print(count)
