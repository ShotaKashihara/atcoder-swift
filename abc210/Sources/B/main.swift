// B - Bouzu Mekuri
// https://atcoder.jp/contests/abc210/tasks/abc210_b
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
let S = readLine()!


let ans = S.enumerated().first(where: { $0.element == "1" })!.offset.isMultiple(of: 2)

print(ans ? "Takahashi" : "Aoki")
