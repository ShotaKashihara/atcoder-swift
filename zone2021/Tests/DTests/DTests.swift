import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                ozRnonnoe
                """, """
                zone
                """),
            (#filePath, #line, """
                hellospaceRhellospace
                """, """

                """),
        ]
        try cases.forEach(solve)
    }
}