import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                35
                AT
                """, """
                Takahashi
                """),
            (#filePath, #line, """
                5
                12345
                AAAAT
                """, """
                Aoki
                """),
            (#filePath, #line, """
                5
                67890
                TTTTA
                """, """
                Takahashi
                """),
            (#filePath, #line, """
                5
                12345
                ATATA
                """, """
                Aoki
                """),
        ]
        try cases.forEach(solve)
    }
}