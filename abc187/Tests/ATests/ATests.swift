import XCTest
import TestLibrary

final class ATests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "123 234\n", "9\n"),
            (#filePath, #line, "593 953\n", "17\n"),
            (#filePath, #line, "100 999\n", "27\n"),
        ]
        try cases.forEach(solve)
    }
}