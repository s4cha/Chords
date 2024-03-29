

// Properties.
// Accidental
// True note 12
// Note 7
// real note == Note + accidental + octave
// note location.
// frequency.

import Foundation

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


public class ChordsEngine {
    
    public init() {    }
    
    public func chordFor(string: String) -> Chord? {
        var intervals: [Interval] = [.first, .majorThird, .perfectFifth]
        let pattern = #"(?<note>[A-G])(?<accidental>(#|b)?)(?<dim7>(dim7)?)(?<diminished>(dim|Dim)?)(?<majorSeventh>(maj7)?)(?<minor>m?)(?<aug>(aug)?)(?<seventh>7?)(?<M7>(M7)?)(?<five>5?)(?<sixth>6?)(?<addSecond>(add2)?)(?<second>(2|sus2)?)(?<sus4>(sus4|sus)?)(?<fourth>(add4)?)(?<dimFive>(-5|b5)?)(?<nine>(9)?)(?<add9>(add9)?)"#
        let regex = try! NSRegularExpression(pattern: pattern, options: [])
        let nsrange = NSRange(string.startIndex..<string.endIndex, in: string)
        var noteName: NoteName?
        var accidental = Accidental.natural
        
        if let match = regex.firstMatch(in: string, options: [], range: nsrange) {
            if #available(OSX 10.13, *) {
                // Note
                let noteRange = match.range(withName: "note")
                if noteRange.location != NSNotFound, let range = Range(noteRange, in: string) {
                    print("Note: \(string[range])")
                    let noteString = string[range]
                    noteName = Input.noteNameFrom(string: String(noteString))
                }
                
                // Accidental
                let accidentalRange = match.range(withName: "accidental")
                if accidentalRange.location != NSNotFound, let range = Range(accidentalRange, in: string) {
                    print("Accidental: \(string[range])")
                    let accidentalString = string[range]
                    if accidentalString == "#" {
                        accidental = .sharp
                    } else if accidentalString == "b" {
                        accidental = .flat
                    }
                }
                
                // Minor?
                let minorRange = match.range(withName: "minor")
                if minorRange.location != NSNotFound, let range = Range(minorRange, in: string) {
                    print("Minor: \(string[range])")
                    let minorString = string[range]
                    if minorString == "m" {
                        // Replace major 3rd by minor 3rd
                        if let majorThirdIndex = intervals.firstIndex(of: .majorThird) {
                            intervals.remove(at: majorThirdIndex)
                            intervals.insert(.minorThird, at: majorThirdIndex)
                        }
                    }
                }
                
                // dim7
                let dim7Range = match.range(withName: "dim7")
                if dim7Range.location != NSNotFound, let range = Range(dim7Range, in: string) {
                    let dimString = string[range]
                    if !dimString.isEmpty {
                        
                        // Replace major 3rd by minor 3rd
                        if let majorThirdIndex = intervals.firstIndex(of: .majorThird) {
                            intervals.remove(at: majorThirdIndex)
                            intervals.insert(.minorThird, at: majorThirdIndex)
                        }
                        
                        // Replace 5th by tritone (5-)
                        if let fifthIndex = intervals.firstIndex(of: .perfectFifth) {
                            intervals.remove(at: fifthIndex)
                            intervals.insert(.tritone, at: fifthIndex)
                        }
                        
                        // Add flat minor seventh (major sixth)
                        intervals.append(.sixthMajor)
                    }
                }
                
                // diminished?
                let dimRange = match.range(withName: "diminished")
                if dimRange.location != NSNotFound, let range = Range(dimRange, in: string) {
                    let dimString = string[range]
                    if !dimString.isEmpty {
                        
                        // Replace major 3rd by minor 3rd
                        if let majorThirdIndex = intervals.firstIndex(of: .majorThird) {
                            intervals.remove(at: majorThirdIndex)
                            intervals.insert(.minorThird, at: majorThirdIndex)
                        }
                        
                        // Replace 5th by tritone (5-)
                        if let fifthIndex = intervals.firstIndex(of: .perfectFifth) {
                            intervals.remove(at: fifthIndex)
                            intervals.insert(.tritone, at: fifthIndex)
                        }
                    }
                }
                
                // seventh?
                let seventhRange = match.range(withName: "seventh")
                if seventhRange.location != NSNotFound, let range = Range(seventhRange, in: string) {
                    let seventhString = string[range]
                    if !seventhString.isEmpty {
                        // Add minor seventh
                        intervals.append(.seventhMinor)
                    }
                }
                
                // maj7
                let majorSeventhRange = match.range(withName: "majorSeventh")
                if majorSeventhRange.location != NSNotFound, let range = Range(majorSeventhRange, in: string) {
                    let majorSeventhString = string[range]
                    if !majorSeventhString.isEmpty {
                        // Add major seventh
                        intervals.append(.seventhMajor)
                    }
                }
                
                // M7
                let M7Range = match.range(withName: "M7")
                if M7Range.location != NSNotFound, let range = Range(M7Range, in: string) {
                    let majorSeventhString = string[range]
                    if !majorSeventhString.isEmpty {
                        // Add major seventh
                        intervals.append(.seventhMajor)
                    }
                }
                
                // C6
                let sixthRange = match.range(withName: "sixth")
                if sixthRange.location != NSNotFound, let range = Range(sixthRange, in: string) {
                    let sixthString = string[range]
                    if !sixthString.isEmpty {
                        // Add major sixth
                        intervals.append(.sixthMajor)
                    }
                }
                
                // C5
                let fiveRange = match.range(withName: "five")
                if fiveRange.location != NSNotFound, let range = Range(fiveRange, in: string) {
                    if !string[range].isEmpty {
                        // Remove third
                        if let majorThirdIndex = intervals.firstIndex(of: .majorThird) {
                            intervals.remove(at: majorThirdIndex)
                        }
                    }
                }
                
                // C2 | sus2
                let secondRange = match.range(withName: "second")
                if secondRange.location != NSNotFound, let range = Range(secondRange, in: string) {
                    if !string[range].isEmpty {
                        // Add major second
                        intervals.append(.secondMajor)
                        
                         // Remove third
                        if let majorThirdIndex = intervals.firstIndex(of: .majorThird) {
                            intervals.remove(at: majorThirdIndex)
                        }
                    }
                }
                
                // add2
                let addSecondRange = match.range(withName: "addSecond")
                if addSecondRange.location != NSNotFound, let range = Range(addSecondRange, in: string) {
                    if !string[range].isEmpty {
                        // Add major second
                        intervals.append(.secondMajor)
                    }
                }
                
                // Csus4
                let sus4Range = match.range(withName: "sus4")
                if sus4Range.location != NSNotFound, let range = Range(sus4Range, in: string) {
                    if !string[range].isEmpty {
                        // Add fourth
                        intervals.append(.perfectfourth)
                        
                         // Remove third
                        if let majorThirdIndex = intervals.firstIndex(of: .majorThird) {
                            intervals.remove(at: majorThirdIndex)
                        }
                    }
                }
                
                // add4
                let fourthRange = match.range(withName: "fourth")
                if fourthRange.location != NSNotFound, let range = Range(fourthRange, in: string) {
                    if !string[range].isEmpty {
                        // Add fourth
                        intervals.append(.perfectfourth)
                    }
                }
                
                // -5
                let dimFiveRange = match.range(withName: "dimFive")
                if dimFiveRange.location != NSNotFound, let range = Range(dimFiveRange, in: string) {
                    let dimString = string[range]
                    if !dimString.isEmpty {
                        
                        // Replace 5th by tritone (5-)
                        if let fifthIndex = intervals.firstIndex(of: .perfectFifth) {
                            intervals.remove(at: fifthIndex)
                            intervals.insert(.tritone, at: fifthIndex)
                        }
                    }
                }
                
                // aug
                let augRange = match.range(withName: "aug")
                if augRange.location != NSNotFound, let range = Range(augRange, in: string) {
                  if !string[range].isEmpty {
                      // Replace 5th by augmented fifth (minor sixth)
                      if let fifthIndex = intervals.firstIndex(of: .perfectFifth) {
                          intervals.remove(at: fifthIndex)
                          intervals.insert(.sixthMinor, at: fifthIndex)
                      }
                  }
                }
                
                // Cadd9
                let addNineRange = match.range(withName: "add9")
                if addNineRange.location != NSNotFound, let range = Range(addNineRange, in: string) {
                     if !string[range].isEmpty {
                        // Add major nine
                        intervals.append(.ninthMajor)
                    }
                }
                
                // C9
                let nineRange = match.range(withName: "nine")
                if nineRange.location != NSNotFound, let range = Range(nineRange, in: string) {
                     if !string[range].isEmpty {
                        
                        // Add minor seventh
                        intervals.append(.seventhMinor)
                        
                        // Add major nine
                        intervals.append(.ninthMajor)
                    }
                }
                
                
            }
        }
        
        // Make sure we have intervals in order.
        intervals = Interval.allCases.filter { intervals.contains($0) }
        
        if let noteName = noteName {
            let note = Note(name: noteName, accidental: accidental)
            return Chord(tonic: note, intervals: intervals)
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
        if let chord = engine.chordFor(string: string) {
            display.print(chord: chord)
        }
    }
}

// Note shortcuts
public let Ab = Note(name: .A, accidental: .flat)
public let A = Note(name: .A, accidental: .natural)
public let Asharp = Note(name: .A, accidental: .sharp)

public let Bb = Note(name: .B, accidental: .flat)
public let B = Note(name: .B, accidental: .natural)

public let C = Note(name: .C, accidental: .natural)
public let Csharp = Note(name: .C, accidental: .sharp)

public let Db = Note(name: .D, accidental: .flat)
public let D = Note(name: .D, accidental: .natural)
public let Dsharp = Note(name: .D, accidental: .sharp)

public let Eb = Note(name: .E, accidental: .flat)
public let E = Note(name: .E, accidental: .natural)


public let F = Note(name: .F, accidental: .natural)
public let Fsharp = Note(name: .F, accidental: .sharp)

public let Gb = Note(name: .G, accidental: .flat)
public let G = Note(name: .G, accidental: .natural)
public let Gsharp = Note(name: .G, accidental: .sharp)

