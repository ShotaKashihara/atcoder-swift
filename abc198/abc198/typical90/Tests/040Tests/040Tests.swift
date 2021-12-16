import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 5
5 2 10 3 6
1 3
1 3
0
1 5
0
""", """
2
"""),
(#filePath, #line,
"""
6 10
8 6 9 1 2 0
1 3
2 3 4
1 5
1 5
1 6
0
""", """
0
"""),
]

final class _040Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}