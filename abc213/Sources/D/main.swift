// D - Takahashi Tour
// https://atcoder.jp/contests/abc213/tasks/abc213_d
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!
typealias Graph = [Vertex]
typealias Vertex = [Int]
var graph = Graph(repeating: [], count: N)
(0..<N-1).forEach { _ in
    let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    graph[A-1].append(B-1)
    graph[B-1].append(A-1)
}

var visited = [Bool].init(repeating: false, count: N)
var route = [Int]()

func solve(next position: Int) {
    visited[position] = true
    route.append(position)

    for next in graph[position].filter({ !visited[$0] }).sorted() {
        solve(next: next)
        route.append(position)
    }
}
solve(next: 0)
print(route.map { $0 + 1 }.map(String.init).joined(separator: " "))
