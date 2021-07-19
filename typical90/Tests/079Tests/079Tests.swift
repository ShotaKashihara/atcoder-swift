import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 3
0 0 0
0 0 0
0 0 0
1 1 0
1 1 0
0 0 0
""", """
Yes
1
"""),
(#filePath, #line,
"""
3 3
0 0 0
0 0 0
0 0 0
0 0 0
0 1 0
0 0 0
""", """
No
"""),
(#filePath, #line,
"""
5 5
6 17 18 29 22
39 50 25 39 25
34 34 8 25 17
28 48 25 47 42
27 47 24 32 28
4 6 3 29 28
48 50 21 48 29
44 44 19 47 28
4 49 46 29 28
4 49 45 1 1
""", """
Yes
140
"""),
]

final class _079Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}