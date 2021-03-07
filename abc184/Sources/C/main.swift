// C - Super Ryuma
// https://atcoder.jp/contests/abc184/tasks/abc184_c
import Foundation

let (r1, c1): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

let (r2, c2): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

if r1 == r2, c1 == c2 {
    print(0)
    exit(0)
}

func contains(a: Int, b: Int, c: Int, d: Int) -> Bool {
    if a + b == c + d {
        return true
    }
    if a - b == c - d {
        return true
    }
    if abs(a-c) + abs(b-d) <= 3 {
        return true
    }
    return false
}

if contains(a: r1, b: c1, c: r2, d: c2) {
    print(1)
    exit(0)
}

// ナナメのどこか
if (r1+c1)%2 == (r2+c2)%2 {
    print(2)
    exit(0)
}

let dxdy: [(Int, Int)] = [
                            (0, 3),
                    (-1, 2),(0, 2),(1, 2),
            (-2, 1),(-1, 1),(0, 1),(1, 1),(2, 1),
    (-3, 0),(-2, 0),(-1, 0),(0, 0),(1, 0),(2, 0),(3, 0),
            (-2,-1),(-1,-1),(0,-1),(1,-1),(2,-1),
                    (-1,-2),(0,-2),(1,-2),
                            (0,-3),
]

for (dx, dy) in dxdy {
    if contains(a: r1, b: c1, c: r2+dx, d: c2+dy) {
        print(2)
        exit(0)
    }
}

print(3)
