import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
1 2 3 4
2 1 4 3
""", """
4
"""),
(#filePath, #line,
"""
3
1 2 3
2 1 3
""", """
0
"""),
(#filePath, #line,
"""
20
2 3 15 19 10 7 5 6 14 13 20 4 18 9 17 8 12 11 16 1
8 12 4 13 19 3 10 16 11 9 1 2 17 6 5 18 7 14 20 15
""", """
803776944
"""),
]

final class GTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}