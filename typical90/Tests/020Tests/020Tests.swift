import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 3 2
""", """
Yes
"""),
(#filePath, #line,
"""
16 3 2
""", """
No
"""),
(#filePath, #line,
"""
8 3 2
""", """
No
"""),
]

final class _020Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}