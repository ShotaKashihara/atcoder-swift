import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2 4
                """, """
                baab
                """),
            (#filePath, #line, """
                30 30 118264581564861424
                """, """
                bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                """),
        ]
        try cases.forEach(solve)
    }
}