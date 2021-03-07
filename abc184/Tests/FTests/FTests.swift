import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 17
                2 3 5 7 11
                """, """
                17
                """),
            (#filePath, #line, """
                6 100
                1 2 7 5 8 10
                """, """
                33
                """),
            (#filePath, #line, """
                6 100
                101 102 103 104 105 106
                """, """
                0
                """),
            (#filePath, #line, """
                7 273599681
                6706927 91566569 89131517 71069699 75200339 98298649 92857057
                """, """
                273555143
                """),
        ]
        try cases.forEach(solve)
    }
}