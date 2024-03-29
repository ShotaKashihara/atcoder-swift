import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 3
1 1
3 3
..#
#.#
#..
""", """
2
"""),
(#filePath, #line,
"""
3 3
2 1
2 3
#.#
...
#.#
""", """
0
"""),
(#filePath, #line,
"""
4 6
2 1
1 5
...#..
.#.##.
.#....
...##.
""", """
5
"""),
]

final class _043Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}