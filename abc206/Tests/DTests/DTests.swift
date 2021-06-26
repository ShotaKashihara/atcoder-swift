import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
8
1 5 3 2 5 2 3 1
""", """
2
"""),
(#filePath, #line,
"""
7
1 2 3 4 1 2 3
""", """
1
"""),
(#filePath, #line,
"""
1
200000
""", """
0
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}