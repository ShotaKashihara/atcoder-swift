import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 3
                """, """
                2
                """),
            (#filePath, #line, """
                3 2
                """, """
                0
                """),
            (#filePath, #line, """
                45108 2571593
                """, """
                224219544
                """),
        ]
        try cases.forEach(solve)
    }
}