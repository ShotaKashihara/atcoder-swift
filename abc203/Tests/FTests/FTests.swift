import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 1
                2 3 4 9
                """, """
                2 1
                """),
            (#filePath, #line, """
                3 3
                2 3 5
                """, """
                0 3
                """),
            (#filePath, #line, """
                9 8
                137 55 56 60 27 28 133 56 55
                """, """
                1 4
                """),
        ]
        try cases.forEach(solve)
    }
}