import XCTest
import TestLibrary

final class _058Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 3
                """, """
                13
                """),
            (#filePath, #line, """
                0 100
                """, """
                0
                """),
            (#filePath, #line, """
                99999 1000000000000000000
                """, """
                84563
                """),
        ]
        try cases.forEach(solve)
    }
}