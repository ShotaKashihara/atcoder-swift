import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                dIfFiCuLt
                """, """
                Yes
                """),
            (#filePath, #line, """
                eASY
                """, """
                No
                """),
            (#filePath, #line, """
                a
                """, """
                Yes
                """),
        ]
        try cases.forEach(solve)
    }
}