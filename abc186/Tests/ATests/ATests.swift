import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                10 3
                """, """
                3
                """),
            (#filePath, #line, """
                1000 1
                """, """
                1000
                """),
        ]
        try cases.forEach(solve)
    }
}