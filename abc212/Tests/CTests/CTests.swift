import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 2
1 6
4 9
""", """
2
"""),
(#filePath, #line,
"""
1 1
10
10
""", """
0
"""),
(#filePath, #line,
"""
6 8
82 76 82 82 71 70
17 39 67 2 45 35 22 24
""", """
3
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}