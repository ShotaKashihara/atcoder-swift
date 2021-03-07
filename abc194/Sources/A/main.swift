// A - I Scream
// https://atcoder.jp/contests/abc194/tasks/abc194_a
import Foundation

let (無脂乳固形分, 乳脂肪分): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let 乳固形分 = 無脂乳固形分 + 乳脂肪分

if 乳固形分 >= 15, 乳脂肪分 >= 8 {
    print(1)
} else if 乳脂肪分 >= 3, 乳固形分 >= 10 {
    print(2)
} else if 乳固形分 >= 3 {
    print(3)
} else {
    print(4)
}

