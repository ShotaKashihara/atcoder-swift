import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                180
                """, """
                Yay!
                """),
            (#filePath, #line, """
                200
                """, """
                :(
                """),
            (#filePath, #line, """
                191
                """, """
                so-so
                """),
        ]
        try cases.forEach(solve)
    }
}
4
