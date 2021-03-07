import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                8 5
                4 4
                7 9
                """, """
                5
                """),
            (#filePath, #line, """
                3
                11 7
                3 2
                6 7
                """, """
                5
                """),
        ]
        try cases.forEach(solve)
    }
}