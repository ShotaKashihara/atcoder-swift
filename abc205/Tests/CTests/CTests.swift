import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2 4
                """, """
                >
                """),
            (#filePath, #line, """
                -7 7 2
                """, """
                =
                """),
            (#filePath, #line, """
                -7 7 3
                """, """
                <
                """),
            (#filePath, #line, """
                -8 6 3
                """, """
                <
                """),
        ]
        try cases.forEach(solve)
    }
}
