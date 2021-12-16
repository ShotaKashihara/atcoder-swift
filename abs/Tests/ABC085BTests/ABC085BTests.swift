import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
10
8
8
6
""", """
3
"""),
(#filePath, #line,
"""
3
15
15
15
""", """
1
"""),
(#filePath, #line,
"""
7
50
30
50
100
50
80
30
""", """
4
"""),
]

final class ABC085BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}