import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
101
""", """
2
"""),
(#filePath, #line,
"""
000
""", """
0
"""),
]

final class ABC081ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}