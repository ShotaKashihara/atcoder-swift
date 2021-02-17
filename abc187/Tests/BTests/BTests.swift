import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                0 0
                1 2
                2 1
                """, """
                2
                """),
            (#filePath, #line, """
                1
                -691 273
                """, """
                0
                """),
            (#filePath, #line, """
                10
                -31 -35
                8 -36
                22 64
                5 73
                -14 8
                18 -58
                -41 -85
                1 -88
                -21 -85
                -11 82
                """, """
                11
                """),
        ]
        try cases.forEach(solve)
    }
}