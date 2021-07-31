import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 5
2 4
1 2
2 3
1 3
3 4
""", """
2
"""),
(#filePath, #line,
"""
4 3
1 3
2 3
2 4
""", """
1
"""),
(#filePath, #line,
"""
2 0
""", """
0
"""),
(#filePath, #line,
"""
7 8
1 3
1 4
2 3
2 4
2 5
2 6
5 7
6 7
""", """
4
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}