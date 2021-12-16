import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5
""", """
AABA
"""),
(#filePath, #line,
"""
14
""", """
BBABBAAAB
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}