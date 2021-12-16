import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 2
""", """
3
"""),
(#filePath, #line,
"""
4 4
""", """
2
"""),
(#filePath, #line,
"""
5 2
""", """
8
"""),
(#filePath, #line,
"""
6783 125
""", """
674508908
"""),
]

final class _050Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}