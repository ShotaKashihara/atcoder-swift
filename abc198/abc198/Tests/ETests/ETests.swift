import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6
2 7 1 8 2 8
1 2
3 6
3 2
4 3
2 5
""", """
1
2
3
4
6
"""),
(#filePath, #line,
"""
10
3 1 4 1 5 9 2 6 5 3
1 2
2 3
3 4
4 5
5 6
6 7
7 8
8 9
9 10
""", """
1
2
3
5
6
7
8
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}