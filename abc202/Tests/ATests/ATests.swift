import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 4 3
                """, """
                13
                """),
            (#filePath, #line, """
                5 6 4
                """, """
                6
                """),
        ]
        try cases.forEach(solve)
    }
}