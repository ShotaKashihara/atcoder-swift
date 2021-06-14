import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2
                """, """
                7
                """),
            (#filePath, #line, """
                3 3
                """, """
                131
                """),
            (#filePath, #line, """
                5 100
                """, """
                379944232
                """),
        ]
        try cases.forEach(solve)
    }
}