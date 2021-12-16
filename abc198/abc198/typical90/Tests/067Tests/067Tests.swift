import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
21 1
""", """
15
"""),
(#filePath, #line,
"""
1330 1
""", """
555
"""),
(#filePath, #line,
"""
2311640221315 15
""", """
474547
"""),
]

final class _067Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}