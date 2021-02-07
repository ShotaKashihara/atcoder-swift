import XCTest
import TestLibrary

final class ATests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "SSS\n", "Won\n"),
            (#filePath, #line, "WVW\n", "Lost\n"),
        ]
        try cases.forEach(solve)
    }
}