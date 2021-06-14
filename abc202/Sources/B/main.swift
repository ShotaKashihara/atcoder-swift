

import Foundation

let now = Date()
let epoch_second = 1622380199

let d1 = Date(timeIntervalSince1970: TimeInterval(epoch_second))

print(now)
print(d1)

if #available(macOS 10.12, *) {
    now.timeIntervalSince1970
    print(Calendar.current.dateInterval(of: .day, for: now))
    print(Calendar.current.dateInterval(of: .day, for: d1))
} else {
    // Fallback on earlier versions
}


//
//let (N, K): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
//
//struct Array2D<Element> {
//    let x: Int
//    let y: Int
//    private var elements: [Element]
//
//    init(repeating: Element, _ x: Int, _ y: Int) {
//        self.x = x
//        self.y = y
//        self.elements = [Element](repeating: repeating, count: x * y)
//    }
//
//    subscript(x: Int, y: Int) -> Element {
//        get {
//            elements[x + y * self.x]
//        }
//        set {
//            elements[x + y * self.x] = newValue
//        }
//    }
//}
//
//extension Optional: CustomStringConvertible where Wrapped: CustomStringConvertible {
//    public var description: String {
//        self?.description ?? "nil"
//    }
//}
//
//extension Array2D: CustomStringConvertible where Element: CustomStringConvertible {
//    var padding: Int { elements.map(\.description.count).max() ?? 0 }
//    var paddingStr: String { Array(repeating: " ", count: padding).joined() }
//    var description: String {
//        var text = "x: \(x), y: \(y)"
//        for i in 0..<y {
//            text += "\n"
//            text += elements[i * x ..< i * x + x]
//                .map { (paddingStr + $0.description).suffix(padding) }
//                .joined(separator: " ")
//        }
//        return text
//    }
//}
//
//var A = Array2D<Int>.init(repeating: 0, N, N)
//for j in 0..<N {
//    let _a = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
//    for i in 0..<N {
//        A[i, j] = _a[i]
//    }
//}
//
//infix operator /+: MultiplicationPrecedence // 切り上げ
//func /+ (lhs: Int, rhs: Int) -> Int {
//    lhs >= 0 ? (lhs + rhs - 1) / rhs : lhs / rhs
//}
//
//var minmedian = Int.max
//// 全探索してみる
//for i in 0 ... (N - K) {
//    for j in 0 ... (N - K) {
//        var m: [Int] = .init(repeating: 0, count: K * K)
////        var m: [Int] = []
//        for i2 in i..<i+K {
////            for j2 in j..<j+K {
////                m.append(A[i2, j2])
////            }
//            m.append(A[i2, 0])
//        }
//        m.sort()
//        let median = m[K*K/+2-1]
//
//        minmedian = min(minmedian, median)
////        print(median)
//    }
//}
//
//print(minmedian)
