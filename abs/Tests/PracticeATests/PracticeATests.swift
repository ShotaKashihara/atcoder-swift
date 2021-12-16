import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
1
2 3
test
""", """
6 test
"""),
(#filePath, #line,
"""
72
128 256
myonmyon
""", """
456 myonmyon
"""),
]

final class PracticeATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}