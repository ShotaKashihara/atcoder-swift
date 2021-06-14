import XCTest
import TestLibrary

final class _045Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2
                0 1
                1 2
                2 0
                """, """
                2
                """),
            (#filePath, #line, """
                5 3
                0 0
                1 1
                0 2
                2 3
                3 1
                """, """
                4
                """),
            (#filePath, #line, """
                10 4
                0 3
                3 5
                2 7
                9 0
                5 6
                4 3
                7 8
                6 5
                9 9
                2 1
                """, """
                20
                """),
            (#filePath, #line, """
                3 2
                0 0
                500000000 500000000
                1000000000 1000000000
                """, """
                500000000000000000
                """),
        ]
        try cases.forEach(solve)
    }
}