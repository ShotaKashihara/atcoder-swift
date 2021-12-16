import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
10
1 1 1 1 1 1 1 1 1 1
""", """
Yes
"""),
(#filePath, #line,
"""
3
1 1 1
""", """
No
"""),
(#filePath, #line,
"""
3
1 18 1
""", """
Yes
"""),
(#filePath, #line,
"""
4
1 9 1 9
""", """
No
"""),
]

final class _076Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}