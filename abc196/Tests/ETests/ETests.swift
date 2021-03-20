import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                -10 2
                10 1
                10 3
                5
                -15 -10 -5 0 5
                """, """
                0
                0
                5
                10
                10
                """),
            (#filePath, #line, """
                3
                -10 2
                10 1
                10 3
                13
                -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1
                """, """
                0
                0
                1
                2
                3
                4
                5
                6
                7
                8
                9
                10
                10
                """),
            (#filePath, #line, """
                2
                3 2
                -3 3
                1
                0
                """, """
                -3
                """),
            (#filePath, #line, """
                2
                -3 3
                3 2
                1
                0
                """, """
                3
                """),
            (#filePath, #line, """
                4
                3 1
                -5 2
                5 3
                3 1
                13
                -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1
                """, """
                3
                """),
        ]
        try cases.forEach(solve)
    }
}
//-10
//-10
//-10
//-10
//-10
//-10
//-10
//-9
//-8
//-7
//-6
//-5
//-4
