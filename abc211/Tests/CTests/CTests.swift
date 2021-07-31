import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
chchokudai
""", """
3
"""),
(#filePath, #line,
"""
atcoderrr
""", """
0
"""),
(#filePath, #line,
"""
chokudaichokudaichokudai
""", """
45
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}