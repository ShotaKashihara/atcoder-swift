import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 2 3
""", """
4
"""),
(#filePath, #line,
"""
2 2 4
""", """
1
"""),
(#filePath, #line,
"""
1000000000000000000 999999999999999999 999999999999999998
""", """
2999999999999999994
"""),
]

final class _022Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}