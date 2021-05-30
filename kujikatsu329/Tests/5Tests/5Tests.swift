import XCTest
import TestLibrary

final class _5Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                36
                """, """
                8
                """),
            (#filePath, #line, """
                91
                """, """
                3
                """),
            (#filePath, #line, """
                314159265358979323846264338327950288419716939937551058209749445923078164062862089986280348253421170
                """, """
                243
                """),
        ]
        try cases.forEach(solve)
    }
}