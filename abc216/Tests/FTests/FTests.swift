import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
3 1
1 2
""", """
2
"""),
(#filePath, #line,
"""
2
1 1
2 2
""", """
0
"""),
(#filePath, #line,
"""
20
1937 3980 2689 1208 3640 1979 581 2271 4229 3948 3708 1522 4161 4661 3797 96 3388 3395 2920 2247
4485 2580 174 1156 3770 3396 3558 3500 3494 479 269 3383 1230 1711 3545 3919 134 475 3796 1017
""", """
476
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}