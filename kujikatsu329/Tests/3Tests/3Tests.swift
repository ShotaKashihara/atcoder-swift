import XCTest
import TestLibrary

final class _3Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                6
                icefox
                """, """
                3
                """),
            (#filePath, #line, """
                7
                firebox
                """, """
                7
                """),
            (#filePath, #line, """
                48
                ffoxoxuvgjyzmehmopfohrupffoxoxfofofoxffoxoxejffo
                """, """
                27
                """),
        ]
        try cases.forEach(solve)
    }
}