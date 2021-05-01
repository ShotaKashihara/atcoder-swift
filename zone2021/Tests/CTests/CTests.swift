import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                3 9 6 4 6
                6 9 3 1 1
                8 8 9 3 7
                """, """
                4
                """),
            (#filePath, #line, """
                5
                6 13 6 19 11
                4 4 12 11 18
                20 7 19 2 5
                15 5 12 20 7
                8 7 6 18 5
                """, """
                13
                """),
            (#filePath, #line, """
                10
                6 7 5 18 2
                3 8 1 6 3
                7 2 8 7 7
                6 3 3 4 7
                12 8 9 15 9
                9 8 6 1 10
                12 9 7 8 2
                10 3 17 4 10
                3 1 3 19 3
                3 14 7 13 1
                """, """
                10
                """),
        ]
        try cases.forEach(solve)
    }
}