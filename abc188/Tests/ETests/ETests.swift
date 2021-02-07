import XCTest
import TestLibrary

final class ETests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "4 3\n2 3 1 5\n2 4\n1 2\n1 3\n", "3\n"),
            (#filePath, #line, "5 5\n13 8 3 15 18\n2 4\n1 2\n4 5\n2 3\n1 3\n", "10\n"),
            (#filePath, #line, "3 1\n1 100 1\n2 3\n", "-99\n"),
        ]
        try cases.forEach(solve)
    }
}