import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
4
1 2 1 4 3 4 3 2
4
2 5 2 3 5 3 5 5
4
5 6 5 5 3 5 3 6
3
1 4
2 3
4 5
""", """
0
2
1
"""),
(#filePath, #line,
"""
2
4
12 3 12 5 0 5 0 3
12
1 1 1 9 10 9 10 0 4 0 4 6 6 6 6 2 8 2 8 7 2 7 2 1
4
2 6
4 4
6 3
1 8
""", """
0
2
1
1
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}