import XCTest
import TestLibrary

final class 019Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                6 2 3 9 8 6
                """, """
                2
                """),
            (#filePath, #line, """
                3
                1 3 5 5 3 1
                """, """
                0
                """),
            (#filePath, #line, """
                4
                1 2 4 8 16 32 64 128
                """, """
                85
                """),
            (#filePath, #line, """
                15
                73 8 55 26 97 48 37 47 35 55 5 17 62 2 60 23 99 73 34 75 7 46 82 84 29 41 32 31 52 32
                """, """
                207
                """),
        ]
        try cases.forEach(solve)
    }
}