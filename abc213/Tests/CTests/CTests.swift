import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 5 2
3 2
2 5
""", """
2 1
1 2
"""),
(#filePath, #line,
"""
1000000000 1000000000 10
1 1
10 10
100 100
1000 1000
10000 10000
100000 100000
1000000 1000000
10000000 10000000
100000000 100000000
1000000000 1000000000
""", """
1 1
2 2
3 3
4 4
5 5
6 6
7 7
8 8
9 9
10 10
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}