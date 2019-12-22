//
//  File.swift
//  
//
//  Created by Sacha on 14/12/2019.
//

import Foundation

enum Interval: CaseIterable {
    case first
    case secondMinor
    case secondMajor
    case minorThird
    case majorThird
    case perfectfourth
    case tritone
    case perfectFifth
    case sixthMinor
    case sixthMajor
    case seventhMinor
    case seventhMajor
    case octave
    case ninthMinor
    case ninthMajor
}


extension Interval {
    func numberOfHalfSteps() -> Int {
        return Interval.allCases.index(of: self)!
    }
}
