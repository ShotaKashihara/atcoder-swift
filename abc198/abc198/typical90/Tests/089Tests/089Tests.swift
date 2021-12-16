import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 0
3 1 4 2
""", """
2
"""),
(#filePath, #line,
"""
7 2
5 3 7 2 1 2 3
""", """
44
"""),
(#filePath, #line,
"""
7 0
7 6 5 4 3 2 1
""", """
1
"""),
]

final class _089Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}