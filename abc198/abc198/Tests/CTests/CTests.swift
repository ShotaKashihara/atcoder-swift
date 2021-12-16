import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 15 0
""", """
3
"""),
(#filePath, #line,
"""
5 11 0
""", """
3
"""),
(#filePath, #line,
"""
3 4 4
""", """
2
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}