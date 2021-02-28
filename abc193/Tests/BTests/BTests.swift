import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                3 9 5
                4 8 5
                5 7 5
                """, """
                8
                """),
            (#filePath, #line, """
                3
                5 9 5
                6 8 5
                7 7 5
                """, """
                -1
                """),
            (#filePath, #line, """
                10
                158260522 877914575 602436426
                24979445 861648772 623690081
                433933447 476190629 262703497
                211047202 971407775 628894325
                731963982 822804784 450968417
                430302156 982631932 161735902
                880895728 923078537 707723857
                189330739 910286918 802329211
                404539679 303238506 317063340
                492686568 773361868 125660016
                """, """
                861648772
                """),
        ]
        try cases.forEach(solve)
    }
}