import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 4
""", """
Even
"""),
(#filePath, #line,
"""
1 21
""", """
Odd
"""),
]

final class ABC086ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}