import XCTest
import TestLibrary

final class _044Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                8 5
                6 17 2 4 17 19 1 7
                2 0 0
                1 7 2
                1 2 6
                1 4 5
                3 4 0
                """, """
                4
                """),
            (#filePath, #line, """
                9 6
                16 7 10 2 9 18 15 20 5
                2 0 0
                1 1 4
                2 0 0
                1 8 5
                2 0 0
                3 6 0
                """, """
                18
                """),
            (#filePath, #line, """
                11 18
                23 92 85 34 21 63 12 9 81 44 96
                3 10 0
                3 5 0
                1 3 4
                2 0 0
                1 4 11
                3 11 0
                1 3 5
                2 0 0
                2 0 0
                3 9 0
                2 0 0
                3 6 0
                3 10 0
                1 6 11
                2 0 0
                3 10 0
                3 4 0
                3 5 0
                """, """
                44
                21
                34
                63
                85
                63
                21
                34
                96
                """),
        ]
        try cases.forEach(solve)
    }
}