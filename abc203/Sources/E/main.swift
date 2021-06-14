// E - White Pawn
// https://atcoder.jp/contests/abc203/tasks/abc203_e
// 実行制限時間: 2.0 sec
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

var black: [Int: [Int]] = [:]

for _ in 0..<M {
    let (X, Y): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    if let b = black[X] {
        black[X] = b + [X]
    } else {
        black[X] = [Y]
    }
}

func dfs(x: Int, y: Int) {
    // 今いる地点から黒のポーンがいるところまでの区間
    
}
