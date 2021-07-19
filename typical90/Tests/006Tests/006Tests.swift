import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
7 3
atcoder
""", """
acd
"""),
(#filePath, #line,
"""
14 5
kittyonyourlap
""", """
inlap
"""),
]

final class _006Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}