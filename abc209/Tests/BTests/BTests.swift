import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 3
1 3
""", """
Yes
"""),
(#filePath, #line,
"""
4 10
3 3 4 4
""", """
No
"""),
(#filePath, #line,
"""
8 30
3 1 4 1 5 9 2 6
""", """
Yes
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}