import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                AND
                OR
                """, """
                5
                """),
            (#filePath, #line, """
                5
                OR
                OR
                OR
                OR
                OR
                """, """
                63
                """),
        ]
        try cases.forEach(solve)
    }
}