import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 3
                3 5 6 7
                2
                5
                3
                """, """
                2
                9
                4
                """),
            (#filePath, #line, """
                5 2
                1 2 3 4 5
                1
                10
                """, """
                6
                15
                """),
        ]
        try cases.forEach(solve)
    }
}
