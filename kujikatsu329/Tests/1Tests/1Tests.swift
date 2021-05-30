import XCTest
import TestLibrary

final class _1Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 0
                xox
                """, """
                0
                """),
            (#filePath, #line, """
                20 199999
                oooooooooxoooooooooo
                """, """
                200017
                """),
            (#filePath, #line, """
                20 10
                xxxxxxxxxxxxxxxxxxxx
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}