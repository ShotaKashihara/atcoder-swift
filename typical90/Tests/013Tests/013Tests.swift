import XCTest
import TestLibrary

final class _013Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                7 9
                1 2 2
                1 3 3
                2 5 2
                3 4 1
                3 5 4
                4 7 5
                5 6 1
                5 7 6
                6 7 3
                """, """
                8
                8
                9
                9
                8
                8
                8
                """),
            (#filePath, #line, """
                4 3
                1 2 1
                2 3 10
                3 4 100
                """, """
                111
                111
                111
                111
                """),
            (#filePath, #line, """
                4 3
                1 2 314
                1 3 159
                1 4 265
                """, """
                265
                893
                583
                265
                """),
        ]
        try cases.forEach(solve)
    }
}