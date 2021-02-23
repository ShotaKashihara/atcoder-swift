import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                10 2 20
                9 11
                13 17
                """, """
                Yes
                """),
            (#filePath, #line, """
                10 2 20
                9 11
                13 16
                """, """
                No
                """),
            (#filePath, #line, """
                15 3 30
                5 8
                15 17
                24 27
                """, """
                Yes
                """),
            (#filePath, #line, """
                20 1 30
                20 29
                """, """
                No
                """),
            (#filePath, #line, """
                20 1 30
                1 10
                """, """
                No
                """),
        ]
        try cases.forEach(solve)
    }
}