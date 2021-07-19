import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
42
""", """
5
"""),
(#filePath, #line,
"""
7
""", """
1
"""),
(#filePath, #line,
"""
192
""", """
16
"""),
]

final class _085Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}