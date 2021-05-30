import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2021 4
                """, """
                50531
                """),
            (#filePath, #line, """
                40000 2
                """, """
                1
                """),
            (#filePath, #line, """
                8691 20
                """, """
                84875488281
                """),
            (#filePath, #line, """
                100000 20
                """, """
                84875488281
                """),
        ]
        try cases.forEach(solve)
    }
}
