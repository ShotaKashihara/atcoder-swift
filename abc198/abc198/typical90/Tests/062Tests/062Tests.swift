import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
3 4
1 3
2 3
2 1
""", """
4
2
1
3
"""),
(#filePath, #line,
"""
3
1 1
2 2
3 3
""", """
3
2
1
"""),
(#filePath, #line,
"""
5
3 4
4 5
1 1
5 1
3 2
""", """
-1
"""),
(#filePath, #line,
"""
6
5 5
2 4
6 6
5 2
1 3
4 1
""", """
1
5
3
6
4
2
"""),
(#filePath, #line,
"""
10
5 1
3 9
7 8
9 3
3 7
10 10
3 5
4 7
1 1
6 6
""", """
-1
"""),
]

final class _062Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}