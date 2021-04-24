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
    return .init(A: A, B: B)
}

enum Color: CaseIterable {
    case R, B, G
}

func dfs(_ i: Int, _ color: Color, _ passed: [Int: Color]) -> Int {
    // i を既に通っていたら pass する
    if let passedColor = passed[i] {
        return passedColor != color ? 1 : 0
    }
    // すべての辺を通る
    var ans = 1
    var passed = passed
    passed[i] = color
    for ab in ab {
        if ab.A == i {
            for c in Color.allCases where c != color {
                ans *= dfs(ab.B, c, passed)
            }
        } else if ab.B == i {
            for c in Color.allCases where c != color {
                ans *= dfs(ab.A, c, passed)
            }
        }
    }
    return ans
}

var ans_array = [Int]()

for i in 0..<N {
    // 点i を含む点群のパターン数を数える
    var ans = 0
    // 点i が孤立していたら3
    ans += dfs(i, .R, [:])
    ans += dfs(i, .G, [:])
    ans += dfs(i, .B, [:])
    // 点i を含む点群の数をメモ
    ans_array.append(ans)
}

print(ans_array.reduce(1, *))
