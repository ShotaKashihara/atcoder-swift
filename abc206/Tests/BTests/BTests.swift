import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
12
""", """
5
"""),
(#filePath, #line,
"""
100128
""", """
447
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}