import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 3
1 1 1
1 2 2
10 1 2
""", """
2
"""),
(#filePath, #line,
"""
2 3
1 1 1
10 2 2
1 1 2
""", """
2
"""),
(#filePath, #line,
"""
4 5
3 1 2
5 2 4
9 3 4
4 1 4
8 2 4
""", """
-1
"""),
(#filePath, #line,
"""
9 11
10 2 7
100 1 6
1 2 8
39 4 5
62 3 4
81 1 3
55 8 8
91 5 5
14 8 9
37 5 5
41 7 9
""", """
385
"""),
]

final class _049Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}