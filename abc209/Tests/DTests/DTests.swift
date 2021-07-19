import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 1
1 2
2 3
2 4
1 2
""", """
Road
"""),
(#filePath, #line,
"""
5 2
1 2
2 3
3 4
4 5
1 3
1 5
""", """
Town
Town
"""),
(#filePath, #line,
"""
9 9
2 3
5 6
4 8
8 9
4 5
3 4
1 9
3 7
7 9
2 5
2 6
4 6
2 4
5 8
7 8
3 6
5 6
""", """
Town
Road
Town
Town
Town
Town
Road
Road
Road
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}