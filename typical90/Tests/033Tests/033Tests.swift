import XCTest
import TestLibrary

final class _033Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 1.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 3
                """, """
                2
                """),
            (#filePath, #line, """
                3 4
                """, """
                4
                """),
            (#filePath, #line, """
                3 6
                """, """
                6
                """),
        ]
        try cases.forEach(solve)
    }
}