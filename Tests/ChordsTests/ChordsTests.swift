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
    
    func testCdim5Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C-5")
        XCTAssertEqual(chord?.notes(), [C, E, Fsharp])
    }
    
    func testC5Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C5")
        XCTAssertEqual(chord?.notes(), [C, G])
    }
    
    func testCaugChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Caug")
        XCTAssertEqual(chord?.notes(), [C, E, Gsharp])
    }
    
    func testCaug7Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Caug7")
        XCTAssertEqual(chord?.notes(), [C, E, Gsharp, Bb])
    }
    
    func testC2Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C2")
        XCTAssertEqual(chord?.notes(), [C, D, G])
    }
    
    func testCsus2Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Csus2")
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
    
    func testCsus4Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Csus4")
        XCTAssertEqual(chord?.notes(), [C, F, G ])
    }
    
    func testCsusChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Csus")
        XCTAssertEqual(chord?.notes(), [C, F, G ])
    }
    
    func testCadd2add4Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cadd2add4")
        XCTAssertEqual(chord?.notes(), [C, D, E, F, G])
    }

    func testC7sus2Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C7sus2")
        XCTAssertEqual(chord?.notes(), [C, D, G, Bb])
    }
    
    func testC7sus4Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C7sus4")
        XCTAssertEqual(chord?.notes(), [C, F, G, Bb])
    }
    
    func testCadd9Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cadd9")
        XCTAssertEqual(chord?.notes(), [C, E, G, D])
    }
    
    func testC9Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "C9")
        XCTAssertEqual(chord?.notes(), [C, E, G, Bb, D])
    }
    
    func testCdimChord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cdim")
        XCTAssertEqual(chord?.notes(), [C, Eb, Gb])
    }
    
    func testCdim7Chord() {
        let engine = ChordsEngine()
        let chord = engine.chordFor(string: "Cdim7")
        XCTAssertEqual(chord?.notes(), [C, Eb, Gb, A])
    }
    

    


    static var allTests = [
        ("testExample", testExample),
    ]
}
