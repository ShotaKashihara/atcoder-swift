import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
214
""", """
8
"""),
(#filePath, #line,
"""
1
""", """
4
"""),
(#filePath, #line,
"""
126
""", """
6
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}