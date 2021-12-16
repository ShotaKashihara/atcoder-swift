import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
Hello,World!
""", """
AC
"""),
(#filePath, #line,
"""
Hello,world!
""", """
WA
"""),
(#filePath, #line,
"""
Hello!World!
""", """
WA
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}