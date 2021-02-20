import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                10 4 3
                1000 11 2
                998244353 897581057 595591169
                10000 6 14
                """, """
                2
                -1
                249561088
                3571
                """),
        ]
        try cases.forEach(solve)
    }
}