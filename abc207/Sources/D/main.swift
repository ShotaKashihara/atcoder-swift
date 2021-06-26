// D - Congruence Points
// https://atcoder.jp/contests/abc207/tasks/abc207_d
// 実行制限時間: 2.0 sec
import Foundation

/// 実装方針
/// `S` に含まれる点のうち １点を決め `s1` とする、
/// `s1` から他の `s2...si` までのそれぞれの点への `rad` と ユークリッド距離 `d` を出す。
/// `T` についてそれぞれ 1点を決め、その点からの `rad` と ユークリッド距離 `d` を出して、マッチするかどうか判定を `t1...ti` 回試す。
/// マッチしたら -> `Yes`
/// マッチしなかったら -> `No`
///
/// 小数点誤差が気になるな？
/// `rad` ->
/// `d^2`:

struct Point {
    var x: Int = 0
    var y: Int = 0
}

func angle(_ a: Point, _ b: Point) -> Int {
    var r = atan2(Double(b.y - a.y), Double(b.x - a.x))
    if r < 0 {
        r = r + 2 * .pi
    }
    return Int(floor(r * 360 / (2 * .pi)))
}

func distance2(_ a:Point, _ b:Point) -> Int {
    return (b.x - a.x) * (b.x - a.x) + (b.y - a.y) * (b.y - a.y)
}

func solve(Spoints: [(angle: Int, distance2: Int)], Tpoints: [(angle: Int, distance2: Int)]) -> Bool {

    var prevSAngle = Spoints.last!.angle
    var prevTAngle = Tpoints.last!.angle
    for (s, t) in zip(Spoints, Tpoints) {
        if s.distance2 != t.distance2 {
            return false
        }
        // 1つ前のとの角度の差分
        let sAngleDiff: Int = Int(s.angle - prevSAngle + 360) % 360
        let tAngleDiff: Int = Int(t.angle - prevTAngle + 360) % 360
        if sAngleDiff != tAngleDiff {
            return false
        }
        prevSAngle = s.angle
        prevTAngle = t.angle
    }
    return true
}

let N = Int(readLine()!)!
var S = [Point]()
var T = [Point]()
for _ in 0..<N {
    let (a, b): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    S.append(.init(x: a, y: b))
}
for _ in 0..<N {
    let (a, b): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
    T.append(.init(x: a, y: b))
}

struct A {
    let base: Point
    let points: [(angle: Int, distance2: Int)]
}

let Sbase = S.first!
var Spoints: [(angle: Int, distance2: Int)] = []
var Sdistance: [Int] = []
var Sangles: [Int] = []

var prevSAngle = Spoints.last!.angle
for i in 1..<N {
    let _angle = angle(Sbase, S[i])
    let _distance2 = distance2(Sbase, S[i])

    let sAngleDiff: Int = Int(_distance2 - prevSAngle + 360) % 360
    Spoints.append((_angle, _distance2))
    prevSAngle = _distance2
}

Spoints.sort { l, r in
    if l.distance2 == r.distance2 {
        return l.angle > r.angle
    }
    return l.distance2 > r.distance2
}

var Tbase: Point!
for i in 0..<N {
    Tbase = T[i]
    var Tpoints: [(angle: Int, distance2: Int)] = []
    for j in 1..<N {
        let index = (i + j) % N
        let _angle = angle(Tbase, T[index])
        let _distance2 = distance2(Tbase, T[index])
        Tpoints.append((_angle, _distance2))
    }

    Tpoints.sort { l, r in
        if l.distance2 == r.distance2 {
            return l.angle > r.angle
        }
        return l.distance2 > r.distance2
    }

//    print(Tpoints, Spoints)
    if solve(Spoints: Spoints, Tpoints: Tpoints) {
        print("Yes")
        exit(0)
    }
}

print("No")
