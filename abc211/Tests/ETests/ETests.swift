import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
5
#.#
...
..#
""", """
5
"""),
(#filePath, #line,
"""
2
2
#.
.#
""", """
0
"""),
(#filePath, #line,
"""
8
8
........
........
........
........
........
........
........
........
""", """
64678
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}