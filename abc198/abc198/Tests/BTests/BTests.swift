import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
1210
""", """
Yes
"""),
(#filePath, #line,
"""
777
""", """
Yes
"""),
(#filePath, #line,
"""
123456789
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