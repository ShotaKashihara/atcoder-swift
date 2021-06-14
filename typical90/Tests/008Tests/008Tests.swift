import XCTest
import TestLibrary

final class _008Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                10
                attcordeer
                """, """
                4
                """),
            (#filePath, #line, """
                41
                btwogablwetwoiehocghiewobadegwhoihegnldir
                """, """
                2
                """),
            (#filePath, #line, """
                140
                aaaaaaaaaaaaaaaaaaaattttttttttttttttttttccccccccccccccccccccooooooooooooooooooooddddddddddddddddddddeeeeeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrr
                """, """
                279999993
                """),
        ]
        try cases.forEach(solve)
    }
}