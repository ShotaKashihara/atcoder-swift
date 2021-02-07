import XCTest
import TestLibrary

final class DTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "0.2 0.8 1.1\n", "3\n"),
            (#filePath, #line, "100 100 1\n", "5\n"),
            (#filePath, #line, "42782.4720 31949.0192 99999.99\n", "31415920098\n"),
        ]
        try cases.forEach(solve)
    }
}