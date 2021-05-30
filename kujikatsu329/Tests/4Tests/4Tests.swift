import XCTest
import TestLibrary

final class _4Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 3
                -30 -10 10 20 50
                """, """
                40
                """),
            (#filePath, #line, """
                3 2
                10 20 30
                """, """
                20
                """),
            (#filePath, #line, """
                1 1
                0
                """, """
                0
                """),
            (#filePath, #line, """
                8 5
                -9 -7 -4 -3 1 2 3 4
                """, """
                10
                """),
        ]
        try cases.forEach(solve)
    }
}