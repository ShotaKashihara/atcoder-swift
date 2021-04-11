import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 15 0
                """, """
                3
                """),
            (#filePath, #line, """
                5 0 15
                """, """
                3
                """),
            (#filePath, #line, """
                5 11 0
                """, """
                3
                """),
            (#filePath, #line, """
                3 4 4
                """, """
                2
                """),
            (#filePath, #line, """
                1 5 5
                """, """
                8
                """),
            (#filePath, #line, """
                2 5 5
                """, """
                4
                """),
            (#filePath, #line, """
                1 3 4
                """, """
                5
                """),
            (#filePath, #line, """
                2 3 4
                """, """
                3
                """),
            (#filePath, #line, """
                1 5 12
                """, """
                13
                """),
            (#filePath, #line, """
                1 8 15
                """, """
                17
                """),
            (#filePath, #line, """
                1 7 24
                """, """
                25
                """),
            (#filePath, #line, """
                100000 7 24
                """, """
                2
                """),
            (#filePath, #line, """
                1 100000 100000
                """, """
                141422
                """),
            (#filePath, #line, """
                2 100000 100000
                """, """
                70711
                """),
            (#filePath, #line, """
                100000 100000 100000
                """, """
                2
                """),
        ]
        try cases.forEach(solve)
    }
}
