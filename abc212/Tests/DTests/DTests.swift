import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5
1 3
1 5
3
2 2
3
""", """
3
7
"""),
(#filePath, #line,
"""
6
1 1000000000
2 1000000000
2 1000000000
2 1000000000
2 1000000000
3
""", """
5000000000
"""),
(#filePath, #line,
"""
8
1 1000000000
2 1000000000
2 1000000000
1 100000000
2 1000000000
2 1000000000
3
3
""", """
2100000000
5000000000
"""),
(#filePath, #line,
"""
8
1 1
2 1
2 1
1 1
2 1
2 1
3
3
""", """
3
5
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}
