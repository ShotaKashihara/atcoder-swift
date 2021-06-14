import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                6 17 28
                """, """
                25
                """),
            (#filePath, #line, """
                4
                8 9 10 11
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}