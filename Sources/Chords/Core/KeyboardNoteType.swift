//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

public enum KeyboardNoteType: CaseIterable {
    case note1 // C
    case note2 // C#
    case note3 // D
    case note4 // D#
    case note5 // E
    case note6 // F
    case note7 // F#
    case note8 // G
    case note9 // G#
    case note10 // A
    case note11 // A#
    case note12 // B
}

func naturalKeyboardNoteType(fromNote note: Note) -> KeyboardNoteType {
    switch note.name {
    case .A:
        return .note10
    case .B:
        return .note12
    case .C:
        return .note1
    case .D:
        return .note3
    case .E:
        return .note5
    case .F:
        return .note6
    case .G:
        return .note8
    }
}

public func keyboardNoteType(fromNote note: Note) -> KeyboardNoteType {
    let naturalNoteType = naturalKeyboardNoteType(fromNote: note)
    switch note.accidental {
    case .flat:
        if naturalNoteType == KeyboardNoteType.allCases.first {
            return KeyboardNoteType.allCases.last!
        } else if let index = KeyboardNoteType.allCases.firstIndex(of: naturalNoteType) {
            return KeyboardNoteType.allCases[index - 1]
        }
    case .natural:
        return naturalNoteType
    case .sharp:
        if naturalNoteType == KeyboardNoteType.allCases.last {
            return KeyboardNoteType.allCases.first!
        } else if let index = KeyboardNoteType.allCases.firstIndex(of: naturalNoteType) {
            return KeyboardNoteType.allCases[index + 1]
        }
    }
    return naturalNoteType
}

func keyboardNoteType(forKeyboardNoteType noteType: KeyboardNoteType, interval: Interval) -> KeyboardNoteType {
    
    if let index = KeyboardNoteType.allCases.firstIndex(of: noteType) {
        
        var newIndex = index.advanced(by: interval.numberOfHalfSteps())
        if newIndex >= 12 {
            newIndex -= 12
        }
        return KeyboardNoteType.allCases[newIndex]
        
    }
    
    return .note1
    
}



func noteFromNoteType(noteType: KeyboardNoteType) -> Note {
    switch noteType {
    case .note1:
        return Note(name: .C, accidental: .natural)
    case .note2:
        return Note(name: .C, accidental: .sharp)
    case .note3:
        return Note(name: .D, accidental: .natural)
    case .note4:
        return Note(name: .D, accidental: .sharp)
    case .note5:
         return Note(name: .E, accidental: .natural)
    case .note6:
         return Note(name: .F, accidental: .natural)
    case .note7:
         return Note(name: .F, accidental: .sharp)
    case .note8:
         return Note(name: .G, accidental: .natural)
    case .note9:
        return Note(name: .G, accidental: .sharp)
    case .note10:
        return Note(name: .A, accidental: .natural)
    case .note11:
        return Note(name: .A, accidental: .sharp)
    case .note12:
        return Note(name: .B, accidental: .natural)
    }
}
