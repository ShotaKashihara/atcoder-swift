import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
3
1 2
2 3
3 3
5
1 2
2 3
3 3
1 3
999999999 1000000000
""", """
Yes
No
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}