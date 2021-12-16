import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
3 1 2
6 1 1
""", """
Yes
"""),
(#filePath, #line,
"""
1
2 100 100
""", """
No
"""),
(#filePath, #line,
"""
2
5 1 1
100 1 1
""", """
No
"""),
]

final class ABC086CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}