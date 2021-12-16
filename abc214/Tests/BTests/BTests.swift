import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
1 0
""", """
4
"""),
(#filePath, #line,
"""
2 5
""", """
10
"""),
(#filePath, #line,
"""
10 10
""", """
213
"""),
(#filePath, #line,
"""
30 100
""", """
2471
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}