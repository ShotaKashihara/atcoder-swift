import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 2 3
1 2
3 4
""", """
1 2 3 4 5
1 3 2 4 5
1 3 5 2 4
"""),
(#filePath, #line,
"""
5 2 1
1 3
3 1
""", """
-1
"""),
(#filePath, #line,
"""
10 15 10
8 4
9 4
10 2
6 2
10 6
1 3
7 4
6 8
8 1
5 6
10 9
3 7
8 3
3 9
2 3
""", """
5 10 6 2 8 1 3 7 9 4
5 10 6 2 8 1 3 9 7 4
5 10 6 8 2 1 3 7 9 4
5 10 6 8 2 1 3 9 7 4
5 10 6 8 1 2 3 7 9 4
5 10 6 8 1 2 3 9 7 4
10 5 6 2 8 1 3 7 9 4
10 5 6 2 8 1 3 9 7 4
10 5 6 8 2 1 3 7 9 4
10 5 6 8 2 1 3 9 7 4
"""),
]

final class _071Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}