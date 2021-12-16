import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 3
...
.#.
...
""", """
8
"""),
(#filePath, #line,
"""
1 6
......
""", """
-1
"""),
(#filePath, #line,
"""
4 4
....
#...
....
...#
""", """
12
"""),
]

final class _072Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}