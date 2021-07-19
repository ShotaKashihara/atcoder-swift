import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6
1 2
1 1
2 3
3 1
3 2
3 3
""", """
1
2
3
"""),
(#filePath, #line,
"""
6
2 1
3 1
2 2
3 1
2 3
3 1
""", """
1
1
1
"""),
(#filePath, #line,
"""
6
1 1000000000
2 200000000
1 30000000
2 4000000
1 500000
3 3
""", """
1000000000
"""),
]

final class _061Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}