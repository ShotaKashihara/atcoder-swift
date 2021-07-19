import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 34
3 14
15 9
26 5
""", """
BAB
"""),
(#filePath, #line,
"""
5 77
1 16
3 91
43 9
4 26
23 11
""", """
BABBA
"""),
(#filePath, #line,
"""
5 59
8 13
55 5
58 8
23 14
4 61
""", """
Impossible
"""),
]

final class _056Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}