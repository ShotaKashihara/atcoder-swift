import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
1 3
""", """
2
"""),
(#filePath, #line,
"""
4
3 3 4 4
""", """
12
"""),
(#filePath, #line,
"""
2
1 1
""", """
0
"""),
(#filePath, #line,
"""
10
999999917 999999914 999999923 999999985 999999907 999999965 999999914 999999908 999999951 999999979
""", """
405924645
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}