import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                101
                2
                """, """
                2
                """),
            (#filePath, #line, """
                ?0?
                1
                """, """
                3
                """),
            (#filePath, #line, """
                10111?10??1101??1?00?1?01??00010?0?1??
                998244353
                """, """
                235562598
                """),
        ]
        try cases.forEach(solve)
    }
}