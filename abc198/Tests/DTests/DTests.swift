import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 5.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                a
                b
                c
                """, """
                1
                2
                3
                """),
            (#filePath, #line, """
                x
                x
                y
                """, """
                1
                1
                2
                """),
            (#filePath, #line, """
                p
                q
                p
                """, """
                UNSOLVABLE
                """),
            (#filePath, #line, """
                abcd
                efgh
                ijkl
                """, """
                UNSOLVABLE
                """),
            (#filePath, #line, """
                send
                more
                money
                """, """
                9567
                1085
                10652
                """),
        ]
        try cases.forEach(solve)
    }
}
