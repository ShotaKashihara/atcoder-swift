import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 2
""", """
8
"""),
(#filePath, #line,
"""
17 29
""", """
263173793
"""),
(#filePath, #line,
"""
2718 2818
""", """
393799986
"""),
(#filePath, #line,
"""
28593 1
""", """
365728740
"""),
(#filePath, #line,
"""
869120 1001
""", """
967393022
"""),
]

final class _090Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 7.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}