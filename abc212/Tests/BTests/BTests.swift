import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
7777
""", """
Weak
"""),
(#filePath, #line,
"""
0112
""", """
Strong
"""),
(#filePath, #line,
"""
9012
""", """
Weak
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}