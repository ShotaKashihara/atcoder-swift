import XCTest
import TestLibrary

let cases: [TestCase] = [

]

final class _053Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}