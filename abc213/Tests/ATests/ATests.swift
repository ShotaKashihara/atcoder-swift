import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 6
""", """
5
"""),
(#filePath, #line,
"""
10 12
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