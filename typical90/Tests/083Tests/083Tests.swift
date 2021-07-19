import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 4
1 2
1 3
1 4
2 3
5
4 2
3 3
2 4
4 5
1 6
""", """
1
1
3
2
5
"""),
(#filePath, #line,
"""
10 20
1 3
7 8
5 8
2 3
7 10
6 7
4 7
9 5
6 5
2 9
4 2
5 7
3 10
4 8
1 8
10 8
5 3
9 1
7 3
2 1
10
3 5
2 2
8 9
5 3
8 2
3 9
7 1
7 1
8 4
6 8
""", """
1
5
1
9
3
3
9
1
1
1
"""),
]

final class _083Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}