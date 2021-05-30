import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                7
                1 1 2 2 4 2
                4
                1 2
                7 2
                4 1
                5 5
                """, """
                3
                1
                0
                0
                """),
        ]
        try cases.forEach(solve)
    }
}