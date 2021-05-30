import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                Everest 8849
                K2 8611
                Kangchenjunga 8586
                """, """
                K2
                """),
            (#filePath, #line, """
                4
                Kita 3193
                Aino 3189
                Fuji 3776
                Okuhotaka 3190
                """, """
                Kita
                """),
            (#filePath, #line, """
                4
                QCFium 2846
                chokudai 2992
                kyoprofriends 2432
                penguinman 2390
                """, """
                QCFium
                """),
        ]
        try cases.forEach(solve)
    }
}