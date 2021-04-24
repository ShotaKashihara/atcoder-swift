import XCTest
import TestLibrary

final class HTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 5.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 2
                3 3
                1 7
                2 5
                1 2
                4 3
                2 1
                """, """
                10
                """),
            (#filePath, #line, """
                5 2
                2 2
                5 5
                5 7
                2 4
                3 10
                3 5
                4 1
                """, """
                13
                """),
            (#filePath, #line, """
                11 4
                8 1
                9 9
                8 10
                8 3
                1 2
                11 3
                9 2
                6 5
                3 4
                1 7
                3 2
                7 8
                10 1
                4 9
                11 6
                """, """
                26
                """),
        ]
        try cases.forEach(solve)
    }
}