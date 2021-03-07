import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 10
                1 3 5
                2 4 4
                3 10 6
                2 4 1
                """, """
                No
                """),
            (#filePath, #line, """
                4 10
                1 3 5
                2 4 4
                3 10 6
                2 3 1
                """, """
                Yes
                """),
            (#filePath, #line, """
                6 1000000000
                0 200000 999999999
                2 20 1
                20 200 1
                200 2000 1
                2000 20000 1
                20000 200000 1
                """, """
                Yes
                """),
        ]
        try cases.forEach(solve)
    }
}