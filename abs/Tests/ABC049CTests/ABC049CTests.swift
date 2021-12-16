import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
erasedream
""", """
YES
"""),
(#filePath, #line,
"""
dreameraser
""", """
YES
"""),
(#filePath, #line,
"""
dreamerer
""", """
NO
"""),
]

final class ABC049CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}