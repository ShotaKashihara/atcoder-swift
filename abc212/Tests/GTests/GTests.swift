import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
""", """
4
"""),
(#filePath, #line,
"""
11
""", """
64
"""),
(#filePath, #line,
"""
998244353
""", """
329133417
"""),
]

final class GTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}