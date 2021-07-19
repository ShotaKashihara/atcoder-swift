import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5
00101
""", """
Takahashi
"""),
(#filePath, #line,
"""
3
010
""", """
Aoki
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}