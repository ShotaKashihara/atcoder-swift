import XCTest
import TestLibrary

final class CTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
//            (#filePath, #line, "5 5\n.....\n.###.\n.###.\n.###.\n.....\n", "4\n"),
              (#filePath, #line, """
                5 5
                .....
                .###.
                .###.
                .###.
                .....
                """, "4\n"),
            (#filePath, #line, """
              5 5
              .....
              .###.
              .#.#.
              .#.#.
              .....
              """, "8\n"),
        ]
        try cases.forEach(solve)
    }
}
