import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 2
2
1 2
2
1 2
""", """
Yes
"""),
(#filePath, #line,
"""
2 2
2
1 2
2
2 1
""", """
No
"""),
(#filePath, #line,
"""
8 4
7
1 2 3 4 5 6 7
6
2 3 4 5 6 7
1
8
2
8 1
""", """
Yes
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}
