import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                314 2
                """, """
                693
                """),
            (#filePath, #line, """
                1000000000 100
                """, """
                0
                """),
            (#filePath, #line, """
                6174 100000
                """, """
                6174
                """),
        ]
        try cases.forEach(solve)
    }
}