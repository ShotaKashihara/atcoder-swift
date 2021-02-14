import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                3 4 8 6
                5 3 1 3
                3 4 2 1
                """, """
                3
                3 4
                1 3
                4 2
                """),
            (#filePath, #line, """
                4
                1 2 3 4
                4 3 2 1
                4 3 2 1
                """, """
                -1
                """),
            (#filePath, #line, """
                1
                58
                998244353
                1
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}