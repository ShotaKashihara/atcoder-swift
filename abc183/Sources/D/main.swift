// D - Water Heater
// https://atcoder.jp/contests/abc183/tasks/abc183_d
import Foundation

let (N, W): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

struct D {
    let diff, time: Int
}

//var array = [D]()
var dic = [Int: Int]()
for _ in 0..<N {
    let (S, T, P): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!, Int(l[1])!, Int(l[2])!) }()
    if let d = dic[S] {
        dic.updateValue(d + P, forKey: S)
    } else {
        dic[S] = P
    }
    if let d = dic[T] {
        dic.updateValue(d - P, forKey: T)
    } else {
        dic[T] = -P
    }
}

var array = dic.map { D.init(diff: $0.value, time: $0.key) }

array.sort(by: { $0.time < $1.time })

var use = 0
for a in array {
    use += a.diff
    if W < use {
        print("No")
        exit(0)
    }
}

print("Yes")
