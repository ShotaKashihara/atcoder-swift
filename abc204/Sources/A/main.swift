// A - Rock-paper-scissors
// https://atcoder.jp/contests/abc204/tasks/abc204_a
// 実行制限時間: 2.0 sec
import Foundation

let (x, y): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

// 0 はグー、1 はチョキを、2 はパー

if x == y {
    print(x)
} else {
    switch x + y {
    case 1:
        print(2)
    case 2:
        print(1)
    case 3:
        print(0)
    default:
        break
    }
}
