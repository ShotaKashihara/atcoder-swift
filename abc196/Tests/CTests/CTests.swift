import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                33
                """, """
                3
                """),
            (#filePath, #line, """
                1333
                """, """
                13
                """),
            (#filePath, #line, """
                10000000
                """, """
                999
                """),
            (#filePath, #line, """
                10000000
                """, """
                999
                """),
        ]
        try cases.forEach(solve)
    }
}
