import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6 6 3
1 3
2 4
1 4
4 6
5 6
1 5
2 6
1 5
3 6
""", """
Yes
Yes
No
"""),
(#filePath, #line,
"""
3 2 2
1 2
1 2
1 2
2 3
""", """
Yes
No
"""),
(#filePath, #line,
"""
2 1 1
1 2
1 2
""", """
Yes
"""),
]

final class _059Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}