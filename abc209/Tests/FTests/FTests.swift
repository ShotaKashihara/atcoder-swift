import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
4 2 4
""", """
2
"""),
(#filePath, #line,
"""
3
100 100 100
""", """
6
"""),
(#filePath, #line,
"""
15
804289384 846930887 681692778 714636916 957747794 424238336 719885387 649760493 596516650 189641422 25202363 350490028 783368691 102520060 44897764
""", """
54537651
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}