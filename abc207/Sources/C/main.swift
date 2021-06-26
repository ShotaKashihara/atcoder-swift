// C - Many Segments
// https://atcoder.jp/contests/abc207/tasks/abc207_c
// 実行制限時間: 2.0 sec
import Foundation

let N = Int(readLine()!)!

typealias Range = (Int, Int, Int)
var ranges: [Range] = []
for _ in 0..<N {
    let (t, l, r): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()
    ranges.append((t, l, r))
//    switch t {
//    case 1:
//        ranges.append((l, r))
//    case 2:
//        ranges.append((l, r-1))
//    case 3:
//        ranges.append((l+1, r))
//    case 4:
//        ranges.append((l+1, r-1))
//    default: break
//    }
}
//ranges = ranges.filter { $0.0 <= $0.1 }
//ranges.sort { $0.0 > $1.0 }

var ans = 0
for i in 0..<N-1 {
    for j in i+1..<N {
        let left_range: Range
        let right_range: Range
        if ranges[i].1 < ranges[j].1 {
            left_range = ranges[i]
            right_range = ranges[j]
        } else {
            left_range = ranges[j]
            right_range = ranges[i]
        }



        if left_range.2 > right_range.1 {
            ans += 1
        } else if (left_range.2 == right_range.1 && [1,3].contains(left_range.0) && [1,2].contains(right_range.0)) {
            ans += 1
        }
    }
}
print(ans)
