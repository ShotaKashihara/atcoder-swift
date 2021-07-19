import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 3
2
1 2
2
2 3
1 0 1
""", """
1
"""),
(#filePath, #line,
"""
2 3
1
1
1
2
0 1 1
""", """
0
"""),
(#filePath, #line,
"""
3 2
1
1
1
2
1
2
1 0
""", """
2
"""),
(#filePath, #line,
"""
13 6
3
1 3 5
3
1 4 5
4
3 4 5 6
2
2 5
4
1 2 3 5
3
3 4 6
3
4 5 6
6
1 2 3 4 5 6
4
1 3 5 6
3
1 2 4
3
1 5 6
4
1 2 3 4
1
5
1 0 0 1 0 0
""", """
128
"""),
]

final class _057Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}