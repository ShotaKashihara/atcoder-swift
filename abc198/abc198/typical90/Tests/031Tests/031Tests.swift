import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
1
0
2
""", """
First
"""),
(#filePath, #line,
"""
2
10 10
10 10
""", """
Second
"""),
(#filePath, #line,
"""
1
1
1
""", """
Second
"""),
(#filePath, #line,
"""
6
3 1 4 1 5 9
2 7 1 8 2 8
""", """
Second
"""),
(#filePath, #line,
"""
6
1 2 3 4 5 6
1 2 3 4 5 6
""", """
First
"""),
]

final class _031Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}