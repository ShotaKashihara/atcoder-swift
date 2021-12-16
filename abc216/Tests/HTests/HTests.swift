import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 2
1 2
""", """
374341633
"""),
(#filePath, #line,
"""
2 2
10 100
""", """
1
"""),
(#filePath, #line,
"""
10 832
73 160 221 340 447 574 720 742 782 970
""", """
553220346
"""),
]

final class HTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}