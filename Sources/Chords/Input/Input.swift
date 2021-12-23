//
//  Input.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

class Input {
    static func noteNameFrom(string: String) -> NoteName? {
        switch string {
            case "A":
                return .A
            case "B":
                return .B
            case "C":
                return .C
            case "D":
                return .D
            case "E":
                return .E
            case "F":
                return .F
            case "G":
                return .G
        default:
            return nil
        }
    }
}
