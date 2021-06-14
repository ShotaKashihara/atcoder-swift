import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 3 3
                1 1 2 2
                1 2 2 3
                1 1 1 3
                """, """
                2
                """),
            (#filePath, #line, """
                5 5 3
                1 1 5 5
                1 1 4 4
                2 2 3 3
                """, """
                3
                """),
        ]
        try cases.forEach(solve)
    }
}