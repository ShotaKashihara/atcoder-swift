import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 3 7 11
                """, """
                3
                """),
            (#filePath, #line, """
                100 100 1 100
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}