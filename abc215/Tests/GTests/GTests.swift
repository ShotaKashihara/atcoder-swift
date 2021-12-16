import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
1 2 2
""", """
1
665496237
2
"""),
(#filePath, #line,
"""
11
3 1 4 1 5 9 2 6 5 3 5
""", """
1
725995895
532396991
768345657
786495555
937744700
574746754
48399732
707846002
907494873
7
"""),
]

final class GTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 4.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}