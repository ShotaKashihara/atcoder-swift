import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
1 3
1 2
""", """
1
0
2
5
"""),
(#filePath, #line,
"""
5
1 3
4 5
1 5
2 3
""", """
1
0
2
5
7
17
"""),
(#filePath, #line,
"""
10
6 10
1 8
2 7
5 6
3 8
3 4
7 10
4 9
2 8
""", """
1
0
3
8
15
32
68
110
196
266
325
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}