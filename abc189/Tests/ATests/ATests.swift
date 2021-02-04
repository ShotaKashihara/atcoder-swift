import XCTest
import TestLibrary
@testable import A

final class ATests: XCTestCase {
    func testExample() throws {
        
        hoge()
    
        
        let cases: [TestCase] = [
            (#filePath, #line, "SSS\n", "Won\n"),
            (#filePath, #line, "WVW\n", "Lost\n"),
        ]
        try cases.forEach(solve)
    }
}
