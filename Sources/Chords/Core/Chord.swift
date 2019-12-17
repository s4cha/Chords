//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

struct AbstractChord {
    let name: String
    let intervals: [Interval]
}


func noteFor(note: Note, interval: Interval) -> Note {
    
    // ex: C + x hlaf steps = new note.

    
    return Note(name: .C, accidental: .natural)
}

struct Chord {
    let tonic: Note
    let abstractChord: AbstractChord
    
    func notes() -> [Note] {
        let notes = abstractChord.intervals.map { i in
            return noteFor(note: tonic, interval: i)
        }
        return notes
    }
}


let minorChord = AbstractChord(name: "minor", intervals: [.first, .minorThird, .perfectFifth])
let majorChord = AbstractChord(name: "Major", intervals: [.first, .majorThird, .perfectFifth])



//let cMajorChord = Chord(tonic: .C, abstractChord: minorChord)


