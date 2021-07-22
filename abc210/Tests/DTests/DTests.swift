import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 4 2
1 7 7 9
9 6 3 7
7 8 6 4
""", """
10
"""),
(#filePath, #line,
"""
2 4 1
10 10 10 1
1 10 10 10
""", """
6
"""),
(#filePath, #line,
"""
2 4 4
10 10 10 1
1 10 10 10
""", """
15
"""),
(#filePath, #line,
"""
3 3 1000000000
1000000 1000000 1
1000000 1000000 1000000
1 1000000 1000000
""", """
1001000001
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}
