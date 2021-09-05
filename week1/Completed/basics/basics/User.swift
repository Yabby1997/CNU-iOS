//
//  User.swift
//  basics
//
//  Created by Seunghun Yang on 2021/09/05.
//

import Foundation

class User {
    let name: String
    let gender: User.Gender
    let birthDay: Date
    let toeicScore: Int
    let agreed: Bool
    
    enum Gender: Int, CustomStringConvertible {
        case male, female
        
        var description: String {
            switch self {
            case .male :
                return "남성"
            case .female :
                return "여성"
            }
        }
    }
    
    init(name: String, gender: User.Gender, birthDay: Date, toeicScore: Int, agreed: Bool) {
        self.name = name
        self.gender = gender
        self.birthDay = birthDay
        self.toeicScore = toeicScore
        self.agreed = agreed
    }
}
