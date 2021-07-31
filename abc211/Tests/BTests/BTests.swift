import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3B
HR
2B
H
""", """
Yes
"""),
(#filePath, #line,
"""
2B
3B
HR
3B
""", """
No
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}