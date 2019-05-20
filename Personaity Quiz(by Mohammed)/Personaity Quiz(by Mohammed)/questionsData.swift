//
//  questionsData.swift
//  Personaity Quiz(by Mohammed)
//
//  Created by Mohammed Brohi on 3/22/19.
//  Copyright © 2019 Mohammed Brohi. All rights reserved.
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
    
    case dog = "🐶" , cat = "😸" , rabbit = "🐰" , turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing, you surround yourself with the people you love and enjoy activities with your friends."
        case.cat:
            return "Mischievous, yet mild-tempered, you enjoy things on your own terms."
        case .rabbit:
            return "You love everything that's soft, You are healthy and full of energy."
        case .turtle:
            return " You are wise beyong the years, and you focus on the details. Slow and Steady wins the race."
        }
    }
}