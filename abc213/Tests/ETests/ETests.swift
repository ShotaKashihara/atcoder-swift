import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 5
..#..
#.#.#
##.##
#.#.#
..#..
""", """
1
"""),
(#filePath, #line,
"""
5 7
.......
######.
.......
.######
.......
""", """
0
"""),
(#filePath, #line,
"""
8 8
.#######
########
########
########
########
########
########
#######.
""", """
5
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}