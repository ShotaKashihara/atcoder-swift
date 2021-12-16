import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 1 2 5
4 2 4
""", """
2
"""),
(#filePath, #line,
"""
65 6 12 35
30 18 35
""", """
257190020
"""),
(#filePath, #line,
"""
23502 65936 72385 95835
72759 85735 72385
""", """
229429276
"""),
]

final class _065Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}