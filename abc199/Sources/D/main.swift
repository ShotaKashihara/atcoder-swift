// D - RGB Coloring 2
// https://atcoder.jp/contests/abc199/tasks/abc199_d
// 実行制限時間: 2.0 sec
import Foundation

let (N, M): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

struct AB {
    let A, B: Int
}
let ab = (0..<M).map { _ -> AB in
    let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    return .init(A: A-1, B: B-1)
}

enum Color: CaseIterable {
    case R, B, G
}

func dfs(
    _ i: Int,
    _ color: Color,
    _ passed_vertex: [Int: Color],
    _ passed_edge: [Int]
) -> Int {
    // i を既に通っていたら pass する
    if let passedColor = passed_vertex[i] {
        return passedColor != color ? 1 : 0
    }
    var ans = 0
    var passed_vertex = passed_vertex
    passed_vertex[i] = color
    let _ab = ab.enumerated()
        .filter { !passed_edge.contains($0.offset) }
    for ab in _ab.filter({ $0.element.A == i }) {
        var passed_edge = passed_edge
        passed_edge.append(ab.offset)
        for c in Color.allCases where c != color {
            ans += dfs(ab.element.B, c, passed_vertex, passed_edge)
        }
    }
    for ab in _ab.filter({ $0.element.B == i }) {
        // 向き先が既に
        var passed_edge = passed_edge
        passed_edge.append(ab.offset)
        for c in Color.allCases where c != color {
            ans += dfs(ab.element.A, c, passed_vertex, passed_edge)
        }
    }
    return ans
}

var ans_array = [Int]()

for i in 0..<N {
    // 点i を含む点群のパターン数を数える
    var ans = 0
    for c in Color.allCases {
        ans += dfs(i, c, [:], [])
    }
    // 点i を含む点群の数をメモ
    ans_array.append(ans)
}

print(ans_array.reduce(1, *))
