import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                0001
                101
                """, """
                1
                """),
            (#filePath, #line, """
                0101010
                1010101
                """, """
                7
                """),
            (#filePath, #line, """
                10101000010011011110
                0010011111
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}