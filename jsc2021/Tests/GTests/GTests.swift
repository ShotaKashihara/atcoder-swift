import XCTest
import TestLibrary

final class GTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                0 1 -1 0
                1 0 -1 -1
                -1 -1 0 0
                0 -1 0 0
                """, """
                2
                """),
            (#filePath, #line, """
                3
                0 1 1
                1 0 1
                1 1 0
                """, """
                0
                """),
            (#filePath, #line, """
                3
                0 0 0
                0 0 0
                0 0 0
                """, """
                0
                """),
            (#filePath, #line, """
                11
                0 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
                -1 0 -1 -1 -1 -1 -1 -1 -1 -1 -1
                -1 -1 0 -1 -1 -1 -1 -1 -1 -1 -1
                -1 -1 -1 0 -1 -1 -1 -1 -1 -1 -1
                -1 -1 -1 -1 0 -1 -1 -1 -1 -1 -1
                -1 -1 -1 -1 -1 0 -1 -1 -1 -1 -1
                -1 -1 -1 -1 -1 -1 0 -1 -1 -1 -1
                -1 -1 -1 -1 -1 -1 -1 0 -1 -1 -1
                -1 -1 -1 -1 -1 -1 -1 -1 0 -1 -1
                -1 -1 -1 -1 -1 -1 -1 -1 -1 0 -1
                -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 0
                """, """
                357947677
                """),
        ]
        try cases.forEach(solve)
    }
}