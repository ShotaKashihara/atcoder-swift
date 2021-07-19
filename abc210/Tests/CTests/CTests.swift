import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
7 3
1 2 1 2 3 3 1
""", """
3
"""),
(#filePath, #line,
"""
5 5
4 4 4 4 4
""", """
1
"""),
(#filePath, #line,
"""
10 6
304621362 506696497 304621362 506696497 834022578 304621362 414720753 304621362 304621362 414720753
""", """
4
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}