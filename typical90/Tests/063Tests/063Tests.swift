import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 6
1 1 1 1 1 2
1 2 2 2 2 2
1 2 2 3 2 3
1 2 3 2 2 3
""", """
6
"""),
(#filePath, #line,
"""
3 3
1 2 3
4 5 6
7 8 9
""", """
1
"""),
(#filePath, #line,
"""
5 3
7 7 7
7 7 7
7 7 7
7 7 7
7 7 7
""", """
15
"""),
]

final class _063Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 4.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}