import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                100 200 100
                """, """
                199
                """),
            (#filePath, #line, """
                103 971 593
                """, """
                5590
                """),
            (#filePath, #line, """
                1000 1 1
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}