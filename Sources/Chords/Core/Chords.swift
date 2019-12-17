

// Properties.
// Accidental
// True note 12
// Note 7
// real note == Note + accidental + octave
// note location.
// frequency.

//
//
//func buildKeyboard() -> [Note] {
//    //8 octaves
//    var notes = [Note]()
//    let numberOfOctaves = 8
////    Array(0...8).forEach { _ in
////
////
////
////        NoteName
////    }
//    for n in KeyboardNote.allCases {
//
//    }
//
//    return notes
//
//}
//struct KeyboardNote {
//    func isWhite
//}

func numberOfSemitonesBetween(note1: NoteName, note2: NoteName) -> Int {
    return 0
}

//func intervaForHalfSteps() -> Interval {
//
//}
//print(Interval.majorThird.stringName())












let cNote = Note(name: .C, accidental: .flat)

    
//print(cNote.stringName())
 



struct MajorChord {
    let note: Note
    
    func notes() -> [Note] {
        return [note]
    }
}

    

let cChord = MajorChord(note: cNote)

//print(cChord.notes())


// Thingas the program should be able to answer:

// What is the number of half steps between to keyboard notes
// Give me the the note for an interval
// Give me the notes for a chord.
// Build all chords for the major scale

// build chord from ChrodStringRepresentation.
// ex "C"  -> single = Major = 135.
// ex "Cmin", "Cm" 1m35.





func intervalFor(halfSteps: Int) -> Interval? {
    switch halfSteps {
    case 0:
        return .first
    case 1:
        return .secondMinor
    case 2:
        return .secondMajor
    case 3:
        return .minorThird
    case 4:
        return .majorThird
            // TODO continue
    default:
        return nil
        
    }
}

func intervalBetween(_ note1: KeyboardNote, _ note2: KeyboardNote) -> Interval? {
    let nbOfHalfSteps = numberOfHalfStepsBetween(note1, note2)
    return intervalFor(halfSteps: nbOfHalfSteps)
}

func numberOfHalfStepsBetween(_ note1: KeyboardNote, _ note2: KeyboardNote) -> Int {
    return abs(note1.noteSpot - note2.noteSpot)
}

func keyboardNoteFor(note: KeyboardNote, interval: Interval) -> KeyboardNote? {
    return nil
}

// Note + interval = other note.







//
//
//keyboardLayoutString.firstIndex(of: "*")?.utf16Offset(in: keyboardLayoutString)


//


class ChordsEngine {
    
    func chordFor(string: String) -> Chord? {
        
        // Major Chord.
        if (string.count == 1) {
            if let noteName = Input.noteNameFrom(string: string) {
                let note = Note(name: noteName, accidental: .natural)
                let chord = Chord(tonic: note, abstractChord: majorChord)
                return chord
            }
        }
        return nil
    }
}

class Chords {
    static func run() {
        print("running...")
        
        printKeyboard()
        
        let keyboardNote1 = KeyboardNote(position: 1)
        let keyboardNote2 = KeyboardNote(position: 5)
        
        printNote(note: keyboardNote2)
        
        

        print(numberOfHalfStepsBetween(keyboardNote1, keyboardNote2))

        print(intervalBetween(keyboardNote1, keyboardNote2))


    }
    
    static func printChordForString(_ string: String) {
        let engine = ChordsEngine()
        let display = Display()
        if let chord = engine.chordFor(string: "C") {
            display.print(chord: chord)
        }
        
        
    }
}
