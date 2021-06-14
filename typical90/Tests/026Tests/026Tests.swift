import XCTest
import TestLibrary

final class _026Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                1 2
                2 3
                2 4
                """, """
                3 4
                """),
            (#filePath, #line, """
                6
                1 3
                2 4
                3 5
                2 5
                3 6
                """, """
                1 2 6
                """),
        ]
        try cases.forEach(solve)
    }
}