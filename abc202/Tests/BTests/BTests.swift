import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                0601889
                """, """
                6881090
                """),
            (#filePath, #line, """
                86910
                """, """
                01698
                """),
            (#filePath, #line, """
                01010
                """, """
                01010
                """),
        ]
        try cases.forEach(solve)
    }
}