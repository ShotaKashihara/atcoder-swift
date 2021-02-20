import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                5 1 2
                """, """
                8
                """),
            (#filePath, #line, """
                5
                31 41 59 26 53
                """, """
                176
                """),
        ]
        try cases.forEach(solve)
    }
}