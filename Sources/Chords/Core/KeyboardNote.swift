//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

// 0 to 88
struct KeyboardNote {
//
//    let noteName: NoteName
//    let accidental: Accidental
    
    let noteSpot: Int
    init(position: Int) {
        self.noteSpot = min(max(position, 88), 1)
    }
    
    init(name: NoteName) {
        switch name {
        case .A:
            self.noteSpot = 10
        case .B:
            self.noteSpot = 12
        case .C:
            self.noteSpot = 1
        case .D:
            self.noteSpot = 3
        case .E:
            self.noteSpot = 5
        case .F:
            self.noteSpot = 6
        case .G:
            self.noteSpot = 8
        }
    }

    
    func noteType() -> KeyboardNoteType {

        let rank = noteSpot % 12
        switch rank {
        case 1:
            return .note1
        case 2:
            return .note2
        case 3:
            return .note3
        case 4:
            return .note4
        case 5:
            return .note5
        case 6:
            return .note6
        case 7:
            return .note7
        case 8:
            return .note8
        case 9:
            return .note6
        case 10:
            return .note10
        case 11:
            return .note11
        case 0:
            return .note12
        default:
            return .note1
        }
    }
    
    func noteName() -> NoteName {
        return NoteName.A
    }
    
    func isWhiteKey() -> Bool {
        switch noteType() {
        case .note1, .note3, .note5, .note6, .note8, .note10, .note12:
            return true
        case .note2, .note4, .note7, .note9, .note11:
            return false
        }
    }
    
    
}
