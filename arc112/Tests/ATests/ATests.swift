import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5
                2 6
                0 0
                1000000 1000000
                12345 67890
                0 1000000
                """, """
                6
                1
                0
                933184801
                500001500001
                """),
        ]
        try cases.forEach(solve)
    }
}