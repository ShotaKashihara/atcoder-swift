import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 4 3
                1 9
                5 3
                7 8
                1 8 6 9
                4 4
                1 4
                1 3
                """, """
                20
                0
                9
                """),
        ]
        try cases.forEach(solve)
    }
}
