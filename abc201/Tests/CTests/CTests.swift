import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                ooo???xxxx
                """, """
                108
                """),
            (#filePath, #line, """
                o?oo?oxoxo
                """, """
                0
                """),
            (#filePath, #line, """
                xxxxx?xxxo
                """, """
                15
                """),
        ]
        try cases.forEach(solve)
    }
}