import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 5
""", """
12
"""),
(#filePath, #line,
"""
98 100
""", """
694
"""),
(#filePath, #line,
"""
1001 869120
""", """
59367733
"""),
(#filePath, #line,
"""
381453331666495446 746254773042091083
""", """
584127830
"""),
]

final class _082Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}