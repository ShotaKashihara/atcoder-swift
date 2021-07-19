import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5
RGBGB
GRGRB
""", """
6
"""),
(#filePath, #line,
"""
3
RRR
BBB
""", """
5
"""),
(#filePath, #line,
"""
10
BGGGRBBGRG
RGBBRGRGGG
""", """
4
"""),
]

final class _047Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}