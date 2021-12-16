import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
100 4
27 100
8 39
83 97
24 75
""", """
1
2
2
3
"""),
(#filePath, #line,
"""
3 5
1 2
2 2
2 3
3 3
1 2
""", """
1
2
3
4
4
"""),
(#filePath, #line,
"""
10 10
1 3
3 5
5 7
7 9
2 4
4 6
6 8
3 5
5 7
4 6
""", """
1
2
3
4
3
4
5
5
6
7
"""),
(#filePath, #line,
"""
500000 7
1 500000
500000 500000
1 500000
1 1
1 500000
500000 500000
1 500000
""", """
1
2
3
4
5
6
7
"""),
]

final class _029Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 4.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}