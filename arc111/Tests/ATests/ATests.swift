import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 2
                """, """
                1
                """),
            (#filePath, #line, """
                2 7
                """, """
                0
                """),
            (#filePath, #line, """
                1000000000000000000 9997
                """, """
                9015
                """),
        ]
        try cases.forEach(solve)
    }
}