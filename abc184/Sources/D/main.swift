// D - increment of coins
// https://atcoder.jp/contests/abc184/tasks/abc184_d
import Foundation

let (A, B, C): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

struct ABC: Hashable {
    let A, B, C: Int
}

var memo: [ABC: Double] = [:]

func dfs(A: Int, B: Int, C: Int) -> Double {
    if let memo = memo[.init(A: A, B: B, C: C)] {
        return memo
    }
    if A == 100 || B == 100 || C == 100 {
        return .zero // ABC どれかが 100 ならコインの必要枚数期待値はゼロ
    }
    let a = Double(A)
    let b = Double(B)
    let c = Double(C)

    var ans = 0.0

    // A か B か C のどれかにコインを振ったのでコインの必要枚数期待値を +1
    ans += 1
    /// `[A が選ばれたケース]`
    /// `A が選ばれる確率` x  `A に +1 した後のコインの必要枚数期待値` が Aを選んだときの期待値
    ans += a / (a+b+c) * dfs(A: A+1, B: B, C: C)
    /// `[B が選ばれたケース]`
    /// `B が選ばれる確率` x `B に +1 した後のコインの必要枚数期待値`が Bを選んだときの期待値
    ans += b / (a+b+c) * dfs(A: A, B: B+1, C: C)
    /// `[C が選ばれたケース]`
    /// `C が選ばれる確率` x `C に +1 した後のコインの必要枚数期待値`が Cを選んだときの期待値
    ans += c / (a+b+c) * dfs(A: A, B: B, C: C+1)

    memo[.init(A: A, B: B, C: C)] = ans
    return ans
}

let ans = dfs(A: A, B: B, C: C)
print(ans)
