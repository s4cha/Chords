import XCTest
@testable import Chords

final class ChordsTests: XCTestCase {
    func testExample() {
        Chords.printChordForString("C#")
        XCTAssertTrue(true)
    }
    
    func testAbMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Ab")
        XCTAssertEqual(chord?.notes(), [Ab, C, Dsharp])
    }
    
    func testAMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "A")
        XCTAssertEqual(chord?.notes(), [A, Csharp, E])
    }
    
    func testAsharpMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "A#")
        XCTAssertEqual(chord?.notes(), [Asharp, D, F])
    }
    
    func testBbMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Bb")
        XCTAssertEqual(chord?.notes(), [Bb, D, F])
    }

    func testBMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "B")
        XCTAssertEqual(chord?.notes(), [B, Dsharp, Fsharp])
    }
    
    func testCbMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cb")
        XCTAssertEqual(chord?.notes(), [B, Eb, Gb])
    }
    
    func testCMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C")
        XCTAssertEqual(chord?.notes(), [C, E, G])
    }
    
    func testCsharpMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C#")
        XCTAssertEqual(chord?.notes(), [Csharp, F, Gsharp])
    }
    
    func testDbMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Db")
        XCTAssertEqual(chord?.notes(), [Db, F, Ab])
    }
    
    func testDMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "D")
        XCTAssertEqual(chord?.notes(), [D, Fsharp, A])
    }
    
    func testDsharpMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "D#")
        XCTAssertEqual(chord?.notes(), [Dsharp, G, Asharp])
    }
    
    func testEbMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Eb")
        XCTAssertEqual(chord?.notes(), [Eb, G, Bb])
    }
    
    func testEMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "E")
        XCTAssertEqual(chord?.notes(), [E, Gsharp, B])
    }
    
    func testFMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "F")
        XCTAssertEqual(chord?.notes(), [F, A, C])
    }
    
    func testFsharpMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "F#")
        XCTAssertEqual(chord?.notes(), [Fsharp, Asharp, Csharp])
    }
    
    func testGbMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Gb")
        XCTAssertEqual(chord?.notes(), [Gb, Bb, Db])
    }
    
    func testGMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "G")
        XCTAssertEqual(chord?.notes(), [G, B, D])
    }
    
    func testGsharpMajorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "G#")
        XCTAssertEqual(chord?.notes(), [Gsharp, C, Dsharp])
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
