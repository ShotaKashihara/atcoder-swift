import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
abc
""", """
4
"""),
(#filePath, #line,
"""
aa
""", """
1
"""),
(#filePath, #line,
"""
acba
""", """
6
"""),
(#filePath, #line,
"""
chokudai
""", """
54
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}