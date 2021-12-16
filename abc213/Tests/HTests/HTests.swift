import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 2 2
1 2
1 0
1 3
2 0
""", """
5
"""),
(#filePath, #line,
"""
3 3 4
1 2
3 0 0 0
1 3
0 1 0 0
2 3
2 0 0 0
""", """
130
"""),
(#filePath, #line,
"""
2 1 5
1 2
31415 92653 58979 32384 62643
""", """
844557977
"""),
]

final class HTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 5.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}