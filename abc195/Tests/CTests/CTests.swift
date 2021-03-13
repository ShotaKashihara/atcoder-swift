import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1
                """, """
                0
                """),
            (#filePath, #line, """
                999
                """, """
                0
                """),
            (#filePath, #line, """
                1000
                """, """
                1
                """),
            (#filePath, #line, """
                1010
                """, """
                11
                """),
            (#filePath, #line, """
                1110
                """, """
                111
                """),
            (#filePath, #line, """
                27182818284590
                """, """
                107730272137364
                """),
        ]
        try cases.forEach(solve)
    }
}
