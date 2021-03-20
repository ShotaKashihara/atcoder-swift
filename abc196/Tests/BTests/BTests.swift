import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5.90
                """, """
                5
                """),
            (#filePath, #line, """
                0
                """, """
                0
                """),
            (#filePath, #line, """
                84939825309432908832902189.9092309409809091329
                """, """
                84939825309432908832902189
                """),
        ]
        try cases.forEach(solve)
    }
}