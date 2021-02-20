//// D - Logical Expression
//// https://atcoder.jp/contests/abc189/tasks/abc189_d
//import Foundation
//
//let n = Int(readLine()!)!
//var s = (0..<n).map { _ in readLine()! }
//
//// 最初は "AND" も "OR" もない場合を考えて、(True) と (False) しかないのでそれぞれ １パターンずつ存在する
//var countPatternFalse = 1
//var countPatternTrue = 1
//
//for i in 0..<n {
//    if s[i] == "AND" {
//        // countPatternTrue
//        countPatternFalse *= 2
//        countPatternFalse += countPatternTrue
//    } else {
//        countPatternTrue *= 2
//        countPatternTrue += countPatternFalse
//    }
//}
//
//print(countPatternTrue)

let n = Int(readLine()!)!

// [3,5,7] から初めて、桁数をどんどん上げていき N を超えたところでストップ
// 3, 5, 7 を含むものだけカウントアップ

extension Int {
    // 123 -> [1, 2, 3]
    var digits: [Int] { Array(String(self)).map { Int(String($0))! } }
}

var answer = 0
func dfs(now: Int) {
    guard now <= n else { return }
    let a = Set(now.digits)
    if a.contains(3), a.contains(5), a.contains(7) {
        answer += 1
    }
    
    for i in [3, 5, 7] {
        dfs(now: now * 10 + i)
    }
}
dfs(now: 0)

print(answer)
