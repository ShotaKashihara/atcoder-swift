import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
1 10 100
10 1 100
100 10 1
1
1 2
""", """
111
"""),
(#filePath, #line,
"""
4
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16
3
1 2
1 3
2 3
""", """
-1
"""),
(#filePath, #line,
"""
3
1 10 100
10 1 100
100 10 1
0
""", """
3
"""),
]

final class _032Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 5.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}