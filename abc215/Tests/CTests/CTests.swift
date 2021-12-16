import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
aab 2
""", """
aba
"""),
(#filePath, #line,
"""
baba 4
""", """
baab
"""),
(#filePath, #line,
"""
ydxwacbz 40320
""", """
zyxwdcba
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}