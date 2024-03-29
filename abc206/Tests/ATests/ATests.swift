import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
180
""", """
Yay!
"""),
(#filePath, #line,
"""
200
""", """
:(
"""),
(#filePath, #line,
"""
191
""", """
so-so
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}