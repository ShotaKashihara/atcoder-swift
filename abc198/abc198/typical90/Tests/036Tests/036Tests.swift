import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 3
-1 2
1 1
-2 -3
1
2
3
""", """
6
7
7
"""),
(#filePath, #line,
"""
5 3
-2 -2
-1 -1
0 0
1 1
2 2
5
3
1
""", """
8
4
8
"""),
(#filePath, #line,
"""
2 1
-1000000000 -1000000000
1000000000 1000000000
1
""", """
4000000000
"""),
]

final class _036Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}