import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 5
1 2
1 3
3 2
5 2
4 2
""", """
3
"""),
(#filePath, #line,
"""
2 1
1 2
""", """
1
"""),
(#filePath, #line,
"""
7 18
7 2
1 6
5 2
1 3
7 6
5 3
5 6
5 4
1 7
2 6
3 4
5 1
4 7
4 6
5 7
3 2
4 2
1 4
""", """
0
"""),
]

final class _078Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}