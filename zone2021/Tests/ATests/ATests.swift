import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                abcdZONefghi
                """, """
                1
                """),
            (#filePath, #line, """
                ZONeZONeZONe
                """, """
                3
                """),
            (#filePath, #line, """
                helloAtZoner
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}