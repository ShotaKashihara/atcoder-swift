import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 5
100 50 102
""", """
502
"""),
(#filePath, #line,
"""
2 2021
2 3
""", """
9
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}