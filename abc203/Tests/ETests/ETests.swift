import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 4
                1 1
                1 2
                2 0
                4 2
                """, """
                3
                """),
            (#filePath, #line, """
                1 1
                1 1
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}