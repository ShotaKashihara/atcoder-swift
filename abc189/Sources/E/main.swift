// E - Rotate and Flip
// https://atcoder.jp/contests/abc189/tasks/abc189_e
import Foundation
struct Scanner {
    private var elements = [String]()
    private var index = 0

    mutating func peek() -> String {
        while elements.count == index {
            elements = readLine()!.split(separator: " ").map(String.init)
            index = 0
        }
        return elements[index]
    }

    mutating func next() -> String {
        defer { index += 1 }
        return peek()
    }

    mutating func nextInt() -> Int {
        return Int(next())!
    }

    mutating func nextInts(_ n: Int) -> [Int] {
        return (0 ..< n).map { _ in nextInt() }
    }

    mutating func nextDouble() -> Double {
        return Double(next())!
    }
}

extension Array where Element == Int {
    func prefixSum() -> [Element] {
        var result = [Int](repeating: 0, count: count + 1)
        for i in 0 ..< count {
            result[i + 1] = result[i] + self[i]
        }
        return result
    }
}

infix operator ++=: AssignmentPrecedence
func ++= <Value: Comparable>(lhs: inout Value, rhs: Value) {
    lhs = max(lhs, rhs)
}

infix operator --=: AssignmentPrecedence
func --= <Value: Comparable>(lhs: inout Value, rhs: Value) {
    lhs = min(lhs, rhs)
}

infix operator **: BitwiseShiftPrecedence

func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}

struct Array2D<Element> {
    let n1: Int
    let n2: Int
    private var elements: [Element]

    init(repeating: Element, _ n1: Int, _ n2: Int) {
        self.n1 = n1
        self.n2 = n2
        self.elements = [Element](repeating: repeating, count: n1 * n2)
    }

    subscript(i: Int, j: Int) -> Element {
        get {
            elements[i * n2 + j]
        }
        set {
            elements[i * n2 + j] = newValue
        }
    }
}

func * (lhs: [[Int]], rhs: [[Int]]) -> [[Int]] {
    var result = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    for i in 0 ..< 3 {
        for j in 0 ..< 3 {
            for k in 0 ..< 3 {
                result[i][j] += lhs[i][k] * rhs[k][j]
            }
        }
    }
    return result
}

func * (lhs: [[Int]], rhs: [Int]) -> [Int] {
    var result = [0, 0, 0]
    for i in 0 ..< 3 {
        for j in 0 ..< 3 {
            result[i] += lhs[i][j] * rhs[j]
        }
    }
    return result
}

var scanner = Scanner()
let N = scanner.nextInt()
var X = [Int]()
var Y = [Int]()
for _ in 0 ..< N {
    X.append(scanner.nextInt())
    Y.append(scanner.nextInt())
}

let M = scanner.nextInt()
var A = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
var prefix = [A]
for _ in 0 ..< M {
    switch scanner.nextInt() {
    case 1:
        A = [[0, 1, 0], [-1, 0, 0], [0, 0, 1]] * A
    case 2:
        A = [[0, -1, 0], [1, 0, 0], [0, 0, 1]] * A
    case 3:
        let p = scanner.nextInt()
        A = [[1, 0, -p], [0, 1, 0], [0, 0, 1]] * A
        A = [[-1, 0, 0], [0, 1, 0], [0, 0, 1]] * A
        A = [[1, 0, p], [0, 1, 0], [0, 0, 1]] * A
    default:
        let p = scanner.nextInt()
        A = [[1, 0, 0], [0, 1, -p], [0, 0, 1]] * A
        A = [[1, 0, 0], [0, -1, 0], [0, 0, 1]] * A
        A = [[1, 0, 0], [0, 1, p], [0, 0, 1]] * A
    }
    prefix.append(A)
}

let Q = scanner.nextInt()
for _ in 0 ..< Q {
    let A = scanner.nextInt()
    let B = scanner.nextInt() - 1
    let answer = prefix[A] * [X[B], Y[B], 1]
    print(answer[0], answer[1])
}
