import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6
1 2 3 3 2 1
""", """
5
"""),
(#filePath, #line,
"""
4
1 2 3 4
""", """
4
"""),
(#filePath, #line,
"""
5
3 3 3 3 3
""", """
1
"""),
]

final class _060Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}