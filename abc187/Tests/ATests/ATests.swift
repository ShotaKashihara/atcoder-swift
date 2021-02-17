import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                123 234
                """, """
                9
                """),
            (#filePath, #line, """
                593 953
                """, """
                17
                """),
            (#filePath, #line, """
                100 999
                """, """
                27
                """),
        ]
        try cases.forEach(solve)
    }
}