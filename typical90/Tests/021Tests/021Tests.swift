import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 7
1 2
2 1
2 3
4 3
4 1
1 4
2 3
""", """
3
"""),
(#filePath, #line,
"""
100 1
1 2
""", """
0
"""),
]

final class _021Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}