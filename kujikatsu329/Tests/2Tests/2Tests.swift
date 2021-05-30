import XCTest
import TestLibrary

final class _2Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                0 0 0 1
                """, """
                -1 1 -1 0
                """),
            (#filePath, #line, """
                2 3 6 6
                """, """
                3 10 -1 7
                """),
            (#filePath, #line, """
                31 -41 -59 26
                """, """
                -126 -64 -36 -131
                """),
        ]
        try cases.forEach(solve)
    }
}
