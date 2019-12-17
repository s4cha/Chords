//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

let keyboardLayoutString =
"""
|  | | | |  |  | | | | | |  |
|  | | | |  |  | | | | | |  |
|  | | | |  |  | | | | | |  |
|  |_| |_|  |  |_| |_| |_|  |
|   |   |   |   |   |   |   |
|   |   |   |   |   |   |   |
|___|___|___|___|___|___|___|
"""

extension Interval {
    func stringName() -> String {
        return String(describing: self)
    }
}


func printNote(note: KeyboardNote) {
    var chars = Array(keyboardLayoutString)
    chars[note.noteType().keyboardLayoutIndex()] = "*"
    let layout = String(chars)
    print(layout)
}

func printKeyboard() {
    print(keyboardLayoutString)
}


extension Accidental {
    func stringName() -> String {
        switch self {
        case .flat:
            return "b"
        case .natural:
          return ""
        case .sharp:
            return "#"
        }
    }
}

extension Note {
    func stringName() -> String {
        return name.stringName() + accidental.stringName()
    }
}


extension NoteName {
    func stringName() -> String {
        switch self {
        case .A:
            return "A"
        case .B:
          return "B"
        case .C:
            return "C"
        case .D:
            return "D"
        case .E:
            return "E"
        case .F:
            return "F"
        case .G:
            return "G"
        }
    }
}


extension KeyboardNoteType {
    func keyboardLayoutIndex() -> Int {
        switch self {
        case .note1:
            return 152
        case .note2:
            return 64
        case .note3:
            return 156
        case .note4:
            return 68
        case .note5:
            return 160
        case .note6:
            return 164
        case .note7:
            return 76
        case .note8:
            return 168
        case .note9:
            return 80
        case .note10:
            return 172
        case .note11:
            return 84
        case .note12:
            return 174
        }
    }
}


class Display {
    
    func print(chord: Chord) {
        var chars = Array(keyboardLayoutString)
        for n in chord.notes() {
            let keyboardNT = keyboardNoteType(fromNote:n)
            chars[keyboardNT.keyboardLayoutIndex()] = "*"
        }
        let layout = String(chars)
        Swift.print(layout)
    }
}
