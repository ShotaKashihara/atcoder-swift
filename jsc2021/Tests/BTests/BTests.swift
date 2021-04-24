import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2
                1 2
                1 3
                """, """
                2 3
                """),
            (#filePath, #line, """
                4 4
                1 2 3 4
                1 2 3 4
                """, """

                """),
        ]
        try cases.forEach(solve)
    }
}