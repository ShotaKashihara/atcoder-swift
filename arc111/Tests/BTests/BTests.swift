import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                1 2
                1 3
                4 2
                2 3
                """, """
                4
                """),
            (#filePath, #line, """
                2
                111 111
                111 111
                """, """
                1
                """),
            (#filePath, #line, """
                12
                5 2
                5 6
                1 2
                9 7
                2 7
                5 5
                4 2
                6 7
                2 2
                7 8
                9 7
                1 8
                """, """
                8
                """),
        ]
        try cases.forEach(solve)
    }
}