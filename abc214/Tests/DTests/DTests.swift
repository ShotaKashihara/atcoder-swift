import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
1 2 10
2 3 20
""", """
50
"""),
(#filePath, #line,
"""
5
1 2 1
2 3 2
4 2 5
3 5 14
""", """
76
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}