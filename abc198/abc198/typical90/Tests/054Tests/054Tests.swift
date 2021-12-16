import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6 3
3
1 2 3
2
3 4
2
5 6
""", """
0
1
1
2
-1
-1
"""),
(#filePath, #line,
"""
4 3
2
1 2
2
2 3
2
3 4
""", """
0
1
2
3
"""),
(#filePath, #line,
"""
4 1
3
2 3 4
""", """
0
-1
-1
-1
"""),
(#filePath, #line,
"""
11 5
4
2 6 9 10
3
1 3 8
5
2 4 6 8 10
2
6 7
4
5 6 7 8
""", """
0
2
1
2
2
2
2
1
3
2
-1
"""),
]

final class _054Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}