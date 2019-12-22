import XCTest
@testable import Chords

final class ChordsTests: XCTestCase {
    func testExample() {
        Chords.printChordForString("F6")
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
    
    // Chord variations
    
    func testCminorChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cm")
        XCTAssertEqual(chord?.notes(), [C, Dsharp, G])
    }

    func testC7Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C7")
        XCTAssertEqual(chord?.notes(), [C, E, G, Bb])
    }
    
    func testCm7Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cm7")
        XCTAssertEqual(chord?.notes(), [C, Dsharp, G, Bb])
    }
    
    func testCmaj7Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cmaj7")
        XCTAssertEqual(chord?.notes(), [C, E, G, B])
    }
    
    func testCmM7Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "CmM7")
        XCTAssertEqual(chord?.notes(), [C, Dsharp, G, B])
    }
    
    func testC6Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C6")
        XCTAssertEqual(chord?.notes(), [C, E, G, A])
    }
    
    func testCm6Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cm6")
        XCTAssertEqual(chord?.notes(), [C, Dsharp, G, A])
    }
    
    func testC5Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C5")
        XCTAssertEqual(chord?.notes(), [C, G])
    }
    
    func testC2Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C2")
        XCTAssertEqual(chord?.notes(), [C, D, G])
    }
    
    func testCadd2Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cadd2")
        XCTAssertEqual(chord?.notes(), [C, D, E, G])
    }
    
    func testCadd4Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cadd4")
        XCTAssertEqual(chord?.notes(), [C, E, F, G])
    }
    
    func testCdim5Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C-5")
        XCTAssertEqual(chord?.notes(), [C, E, Fsharp])
    }
    
    func testC7sus2Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C7sus2")
        XCTAssertEqual(chord?.notes(), [C, D, G, Bb])
    }
    
    func testBdimChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Bdim")
        XCTAssertEqual(chord?.notes(), [B, D, F])
    }
    

    


    static var allTests = [
        ("testExample", testExample),
    ]
}
