// A - B = C
// https://atcoder.jp/contests/arc112/tasks/arc112_a
import Foundation


let t = Int(readLine()!)!

func solve(L: Int, R: Int) {
    // Cの最大値を出して、何通りか数える
    // それを C の最小値までの和を考える
    let maxC = R - L
    let minC = L
    let maxN = R-maxC-L+1
    let minN = R-minC-L+1
    guard maxC >= 0, minC >= 0, maxN >= 0, minN >= 0 else {
        print(0)
        return
    }
    // 等差数列の和
    print(等差数列の和(a: maxN, l: minN))
}

(0..<t).map { _ in readLine()! }.map { s -> (Int, Int) in
    let l = s.components(separatedBy: " "); return (Int(l[0])!, Int(l[1])!)
}.forEach { (L, R) in
    solve(L: L, R: R)
}


func 等差数列の和(a 初項: Int, l 末項: Int, n 項数: Int, d 公差: Int) -> Int {
    (2*初項+(項数-1)*公差)*項数/2
}

func 等差数列の和(a 初項: Int, l 末項: Int) -> Int {
    (初項+末項)*(末項-初項+1)/2
}


