import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 2
                """, """
                203
                """),
            (#filePath, #line, """
                3 3
                """, """
                1818
                """),
        ]
        try cases.forEach(solve)
    }
}