import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                3
                """, """
                1
                """),
            (#filePath, #line, """
                5
                4
                """, """
                0
                """),
            (#filePath, #line, """
                5
                10
                """, """
                1
                """),
            (#filePath, #line, """
                22
                10
                """, """
                2
                """),
            (#filePath, #line, """
                999
                1412
                """, """
                2
                """),
            (#filePath, #line, """
                100000000000000000000000000000000000000000000000000000000000
                1000000000000000000
                """, """
                1
                """),
            (#filePath, #line, """
                123
                66
                """, """
                4
                """),
        ]
        try cases.forEach(solve)
    }
}
