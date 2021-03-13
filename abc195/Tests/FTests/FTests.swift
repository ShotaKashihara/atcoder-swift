import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 4
                """, """
                6
                """),
            (#filePath, #line, """
                1 1
                """, """
                2
                """),
            (#filePath, #line, """
                123456789000 123456789050
                """, """
                2125824
                """),
        ]
        try cases.forEach(solve)
    }
}