//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

public struct Note {
    let name: NoteName
    let accidental: Accidental
}

/// Makes sure Ab == G# :)
extension Note: Equatable {
    public static func == (lhs: Note, rhs: Note) -> Bool {
        return keyboardNoteType(fromNote: lhs) == keyboardNoteType(fromNote: rhs)
    }
}
