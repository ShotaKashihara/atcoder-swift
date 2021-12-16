import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 2
2 2 5
3 4
1 0
1 1
0 1
""", """
2 6
"""),
(#filePath, #line,
"""
1 1
3
4
1
""", """
0 1
"""),
(#filePath, #line,
"""
1 3
100
30 30 30
1 1 1
""", """
11 892328666
"""),
]

final class HTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}