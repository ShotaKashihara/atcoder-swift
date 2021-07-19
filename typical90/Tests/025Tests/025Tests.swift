import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
999 434
""", """
2
"""),
(#filePath, #line,
"""
255 15
""", """
2
"""),
(#filePath, #line,
"""
9999999999 1
""", """
0
"""),
]

final class _025Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}