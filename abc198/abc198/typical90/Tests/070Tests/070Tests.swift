import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
-1 2
1 1
""", """
3
"""),
(#filePath, #line,
"""
2
1 0
0 1
""", """
2
"""),
(#filePath, #line,
"""
5
2 5
2 5
-3 4
-4 -8
6 -2
""", """
35
"""),
(#filePath, #line,
"""
4
1000000000 1000000000
-1000000000 1000000000
-1000000000 -1000000000
1000000000 -1000000000
""", """
8000000000
"""),
]

final class _070Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}