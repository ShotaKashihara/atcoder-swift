import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                99 99 99
                """, """
                1.000000000
                """),
            (#filePath, #line, """
                98 99 99
                """, """
                1.331081081
                """),
            (#filePath, #line, """
                0 0 1
                """, """
                99.000000000
                """),
            (#filePath, #line, """
                31 41 59
                """, """
                91.835008202
                """),
        ]
        try cases.forEach(solve)
    }
}
