import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 1.5

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                6
                2 4 4 9 4 9
                """, """
                20
                """),
            (#filePath, #line, """
                6
                200 4 4 9 4 9
                """, """
                200
                """),
        ]
        try cases.forEach(solve)
    }
}