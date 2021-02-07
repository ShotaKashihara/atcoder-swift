import XCTest
import TestLibrary

final class ETests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "4 4\n1 2 5\n2 3 10\n3 1 15\n4 3 20\n", "30\n30\n30\n-1\n"),
            (#filePath, #line, "4 6\n1 2 5\n1 3 10\n2 4 5\n3 4 10\n4 1 10\n1 1 10\n", "10\n20\n30\n20\n"),
            (#filePath, #line, "4 7\n1 2 10\n2 3 30\n1 4 15\n3 4 25\n3 4 20\n4 3 20\n4 3 30\n", "-1\n-1\n40\n40\n"),
        ]
        try cases.forEach(solve)
    }
}