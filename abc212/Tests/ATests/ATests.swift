import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
50 50
""", """
Alloy
"""),
(#filePath, #line,
"""
100 0
""", """
Gold
"""),
(#filePath, #line,
"""
0 100
""", """
Silver
"""),
(#filePath, #line,
"""
100 2
""", """
Alloy
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}