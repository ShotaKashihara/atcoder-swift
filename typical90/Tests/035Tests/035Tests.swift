import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6
1 2
2 3
3 4
1 5
3 6
5
2 1 2
3 1 3 5
4 2 3 4 5
5 1 2 3 5 6
6 1 2 3 4 5 6
""", """
1
3
4
4
5
"""),
(#filePath, #line,
"""
6
1 2
2 3
3 4
1 5
3 6
5
2 1 2
2 3 4
2 4 6
2 1 5
2 2 5
""", """
1
1
2
1
2
"""),
(#filePath, #line,
"""
6
1 2
2 3
3 4
1 5
3 6
5
3 1 2 3
3 1 2 5
3 1 3 6
3 3 4 5
3 4 5 6
""", """
2
2
3
4
5
"""),
]

final class _035Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}