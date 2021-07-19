import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 4
1 1
2 5
7 4
""", """
2
"""),
(#filePath, #line,
"""
2 123
4 5
678 901
""", """
1
"""),
(#filePath, #line,
"""
7 10
20 20
20 20
20 30
20 40
30 20
30 30
40 20
""", """
5
"""),
]

final class _081Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}