import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
42
""", """
2
"""),
(#filePath, #line,
"""
48
""", """
3
"""),
(#filePath, #line,
"""
54
""", """
2
"""),
(#filePath, #line,
"""
53
""", """
0
"""),
]

final class _075Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}