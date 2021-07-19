import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 4
""", """
3
"""),
(#filePath, #line,
"""
10 100
""", """
91
"""),
(#filePath, #line,
"""
3 2
""", """
0
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}