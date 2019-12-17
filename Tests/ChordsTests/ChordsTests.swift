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
        
        Chords.printChordForString("A")
        
        
        XCTAssertTrue(true)
    }
    
    func testAMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "A")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .A)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .C)
        XCTAssertEqual(second?.accidental, .sharp)
        XCTAssertEqual(third?.name, .E)
        XCTAssertEqual(third?.accidental, .natural)
    }

    func testBMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "B")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .B)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .D)
        XCTAssertEqual(second?.accidental, .sharp)
        XCTAssertEqual(third?.name, .F)
        XCTAssertEqual(third?.accidental, .sharp)
    }
    
    func testCMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .C)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .E)
        XCTAssertEqual(second?.accidental, .natural)
        XCTAssertEqual(third?.name, .G)
        XCTAssertEqual(third?.accidental, .natural)
    }
    
    func testDMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "D")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .D)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .F)
        XCTAssertEqual(second?.accidental, .sharp)
        XCTAssertEqual(third?.name, .A)
        XCTAssertEqual(third?.accidental, .natural)
    }
    
    func testEMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "E")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .E)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .G)
        XCTAssertEqual(second?.accidental, .sharp)
        XCTAssertEqual(third?.name, .B)
        XCTAssertEqual(third?.accidental, .natural)
    }
    
    func testFMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "F")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .F)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .A)
        XCTAssertEqual(second?.accidental, .natural)
        XCTAssertEqual(third?.name, .C)
        XCTAssertEqual(third?.accidental, .natural)
    }
    
    func testGMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "G")
        let first = chord?.notes()[0]
        let second = chord?.notes()[1]
        let third = chord?.notes()[2]
        XCTAssertEqual(first?.name, .G)
        XCTAssertEqual(first?.accidental, .natural)
        XCTAssertEqual(second?.name, .B)
        XCTAssertEqual(second?.accidental, .natural)
        XCTAssertEqual(third?.name, .D)
        XCTAssertEqual(third?.accidental, .natural)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
