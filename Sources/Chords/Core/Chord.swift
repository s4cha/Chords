//
//  Chord.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

//struct AbstractChord {
//    let intervals: [Interval]
//}


func noteFor(note: Note, interval: Interval) -> Note {
    let noteType = keyboardNoteType(fromNote: note)
    let intervalNoteType = keyboardNoteType(forKeyboardNoteType: noteType, interval: interval)
    return noteFromNoteType(noteType: intervalNoteType)
}

public struct Chord {
    public let tonic: Note
    public let intervals: [Interval]
    
    public func notes() -> [Note] {
        let notes = intervals.map { i in
            return noteFor(note: tonic, interval: i)
        }
        return notes
    }
}

public extension Chord {
    func nextInversion() -> Chord {
        var newIntervals = intervals
        if !intervals.isEmpty {
            let first = newIntervals.removeFirst()
            newIntervals.append(first)
        }
        return Chord(tonic: tonic, intervals: newIntervals)
    }
}




//let minorChord = AbstractChord(name: "minor", intervals: [.first, .minorThird, .perfectFifth])
//let majorChord = AbstractChord(name: "Major", intervals: [.first, .majorThird, .perfectFifth])



//let cMajorChord = Chord(tonic: .C, abstractChord: minorChord)


