import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
1
""", """
0
"""),
(#filePath, #line,
"""
234
""", """
757186539
"""),
]

final class _042Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}