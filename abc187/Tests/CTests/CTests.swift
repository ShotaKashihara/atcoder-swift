import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                6
                a
                !a
                b
                !c
                d
                !d
                """, """
                a
                """),
            (#filePath, #line, """
                10
                red
                red
                red
                !orange
                yellow
                !blue
                cyan
                !green
                brown
                !gray
                """, """
                satisfiable
                """),
        ]
        try cases.forEach(solve)
    }
}