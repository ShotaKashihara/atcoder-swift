import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 2
3 1 3 2 3
1 2
1 4
""", """
4
2 3 4 5
3
1 3 5
"""),
(#filePath, #line,
"""
10 10
2 5 7 8 11 10 1 88 86 50
1 2
1 3
1 4
1 5
1 6
5 10
6 10
2 3
9 10
7 8
""", """
2
6 7
1
5
"""),
]

final class _088Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}