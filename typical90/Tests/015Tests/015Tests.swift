import XCTest
import TestLibrary

final class 015Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1
                """, """
                1
                """),
            (#filePath, #line, """
                2
                """, """
                3
                2
                """),
            (#filePath, #line, """
                3
                """, """
                7
                4
                3
                """),
            (#filePath, #line, """
                4
                """, """
                15
                7
                5
                4
                """),
            (#filePath, #line, """
                7
                """, """
                127
                33
                18
                13
                10
                8
                7
                """),
            (#filePath, #line, """
                20
                """, """
                1048575
                17710
                2744
                906
                430
                250
                167
                118
                90
                75
                65
                56
                48
                41
                35
                30
                26
                23
                21
                20
                """),
            (#filePath, #line, """
                50
                """, """
                898961330
                951279874
                262271567
                14341526
                1985602
                466851
                153365
                63191
                30623
                16687
                9987
                6453
                4354
                3070
                2290
                1790
                1427
                1138
                910
                735
                605
                512
                448
                405
                375
                350
                326
                303
                281
                260
                240
                221
                203
                186
                170
                155
                141
                128
                116
                105
                95
                86
                78
                71
                65
                60
                56
                53
                51
                50
                """),
        ]
        try cases.forEach(solve)
    }
}