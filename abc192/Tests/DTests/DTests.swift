import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
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
