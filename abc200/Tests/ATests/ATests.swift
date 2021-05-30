import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2021
                """, """
                21
                """),
            (#filePath, #line, """
                200
                """, """
                2
                """),
        ]
        try cases.forEach(solve)
    }
}