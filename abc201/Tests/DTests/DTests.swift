import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 3
                ---
                +-+
                +--
                """, """
                Takahashi
                """),
            (#filePath, #line, """
                2 4
                +++-
                -+-+
                """, """
                Aoki
                """),
            (#filePath, #line, """
                1 1
                -
                """, """
                Draw
                """),
        ]
        try cases.forEach(solve)
    }
}
