import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                45 200
                """, """
                90
                """),
            (#filePath, #line, """
                37 450
                """, """
                166.5
                """),
            (#filePath, #line, """
                0 1000
                """, """
                0
                """),
            (#filePath, #line, """
                50 0
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}