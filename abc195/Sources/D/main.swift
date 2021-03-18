// D - Shipping Center
// https://atcoder.jp/contests/abc195/tasks/abc195_d
// 実行制限時間: 2.0 sec
import Foundation

let (N, M, Q): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()

let (W, V) = (0..<N).reduce(into: ([Int](), [Int]())) { r, _ in
    let l = readLine()!.split(separator: " ").map(String.init)
    r.0.append(Int(l[0])!)
    r.1.append(Int(l[1])!)
}

let WV = zip(W, V).sorted(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1 })

//[0,0,0].sorted(by: .asc)

//public static func < (lhs: Int, rhs: Int) -> Bool

let X = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

for _ in 1...Q {
    let (L, R): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

    // L~R を除いた箱を列挙する
    let boxes = X.enumerated().filter { index, element -> Bool in
        !(L-1...R-1).contains(index)
    }.sorted(by: { $0.element < $1.element })
    var uses = [Int]()
    // 価値が大きい荷物から詰めていく
    var sum = 0
    for n in WV {
        for box in boxes {
            if uses.contains(box.offset) {
                continue
            }
            
            if n.0 <= box.element {
                uses.append(box.offset)
                sum += n.1
                break
            }
        }
    }
    print(sum)
}
