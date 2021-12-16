import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
20 2 5
""", """
84
"""),
(#filePath, #line,
"""
10 1 2
""", """
13
"""),
(#filePath, #line,
"""
100 4 16
""", """
4554
"""),
]

final class ABC083BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}