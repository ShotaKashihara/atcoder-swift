import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 5
1 3
2 1
""", """
Yes
"""),
(#filePath, #line,
"""
3 1
7 8 9
7 8 9
""", """
No
"""),
(#filePath, #line,
"""
7 999999999
3 1 4 1 5 9 2
1 2 3 4 5 6 7
""", """
Yes
"""),
]

final class _024Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}