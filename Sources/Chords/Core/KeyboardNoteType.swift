//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

enum KeyboardNoteType: CaseIterable {
    case note1
    case note2
    case note3
    case note4
    case note5
    case note6
    case note7
    case note8
    case note9
    case note10
    case note11
    case note12
}

func keyboardNoteType(fromNote: Note) -> KeyboardNoteType {
    return .note1
}
