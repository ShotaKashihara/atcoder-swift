import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
130 100
""", """
110
"""),
(#filePath, #line,
"""
300 50
""", """
133.3333333
"""),
(#filePath, #line,
"""
123 123
""", """
123
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}