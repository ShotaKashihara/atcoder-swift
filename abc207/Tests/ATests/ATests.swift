import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 4 5
""", """
9
"""),
(#filePath, #line,
"""
6 6 6
""", """
12
"""),
(#filePath, #line,
"""
99 99 98
""", """
198
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}