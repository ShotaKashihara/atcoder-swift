import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                SSS
                """, """
                Won
                """),
            (#filePath, #line, """
                WVW
                """, """
                Lost
                """),
        ]
        try cases.forEach(solve)
    }
}