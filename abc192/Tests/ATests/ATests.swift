import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                140
                """, """
                60
                """),
            (#filePath, #line, """
                1000
                """, """
                100
                """),
        ]
        try cases.forEach(solve)
    }
}