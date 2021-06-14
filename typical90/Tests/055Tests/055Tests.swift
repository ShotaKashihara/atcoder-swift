import XCTest
import TestLibrary

final class _055Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 5.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                6 7 1
                1 2 3 4 5 6
                """, """
                1
                """),
            (#filePath, #line, """
                10 1 0
                0 0 0 0 0 0 0 0 0 0
                """, """
                252
                """),
        ]
        try cases.forEach(solve)
    }
}