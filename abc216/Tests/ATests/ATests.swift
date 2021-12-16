import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
15.8
""", """
15+
"""),
(#filePath, #line,
"""
1.0
""", """
1-
"""),
(#filePath, #line,
"""
12.5
""", """
12
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}