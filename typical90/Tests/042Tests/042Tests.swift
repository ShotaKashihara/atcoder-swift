import XCTest
import TestLibrary

final class _042Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1
                """, """
                0
                """),
            (#filePath, #line, """
                234
                """, """
                757186539
                """),
        ]
        try cases.forEach(solve)
    }
}