import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 6
""", """
12
"""),
(#filePath, #line,
"""
1000000000000000000 3
""", """
Large
"""),
(#filePath, #line,
"""
1000000000000000000 1
""", """
1000000000000000000
"""),
]

final class _038Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}