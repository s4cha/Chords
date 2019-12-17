import XCTest
@testable import Chords

final class ChordsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        let chords = Chords()
//        Chords.run()
//
        
        Chords.printChordForString("C")
        
        
        XCTAssertTrue(true)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
