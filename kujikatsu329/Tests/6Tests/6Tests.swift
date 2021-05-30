import XCTest
import TestLibrary

final class _6Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2
                """, """
                2
                """),
            (#filePath, #line, """
                2 3
                """, """
                18
                """),
            (#filePath, #line, """
                141421 356237
                """, """
                881613484
                """),
        ]
        try cases.forEach(solve)
    }
}