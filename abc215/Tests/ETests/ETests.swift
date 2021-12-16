import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
BGBH
""", """
13
"""),
(#filePath, #line,
"""
100
BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBIEIJEIJIJCGCCFGIEBIHFCGFBFAEJIEJAJJHHEBBBJJJGJJJCCCBAAADCEHIIFEHHBGF
""", """
330219020
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}