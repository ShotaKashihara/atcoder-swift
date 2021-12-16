import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 2
1 2
2 3
""", """
2
1
"""),
(#filePath, #line,
"""
5 6
1 2
1 4
1 5
2 3
2 5
3 4
""", """
43
31
37
41
"""),
(#filePath, #line,
"""
2 0
""", """
0
"""),
]

final class GTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}