//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Stephen Rothermel on 7/18/18.
//  Copyright © 2018 Stephen Rothermel. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    }

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", bird = "🐦", frog = "🐸"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are a lazy son of a bitch."
        case .cat:
            return "You're one heartless bitch."
        case .bird:
            return "You're lucky you survived the dinosaur age."
        case .frog:
            return "Chances are you'll die soon."
        }
    }
}
