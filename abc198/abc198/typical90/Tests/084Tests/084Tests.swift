import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
ooxo
""", """
5
"""),
(#filePath, #line,
"""
5
oxoxo
""", """
10
"""),
(#filePath, #line,
"""
5
ooooo
""", """
0
"""),
(#filePath, #line,
"""
7
xxoooxx
""", """
16
"""),
]

final class _084Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}