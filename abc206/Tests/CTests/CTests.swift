import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
1 7 1
""", """
2
"""),
(#filePath, #line,
"""
10
1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000
""", """
45
"""),
(#filePath, #line,
"""
20
7 8 1 1 4 9 9 6 8 2 4 1 1 9 5 5 5 3 6 4
""", """
173
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}