import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 3 20 15
""", """
90
"""),
(#filePath, #line,
"""
10 10 100 1
""", """
1000
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}