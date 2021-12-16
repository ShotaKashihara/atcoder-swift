import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
2
2
100
""", """
2
"""),
(#filePath, #line,
"""
5
1
0
150
""", """
0
"""),
(#filePath, #line,
"""
30
40
50
6000
""", """
213
"""),
]

final class ABC087BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}