//
//  QuestionOne.swift
//  Trivia
//
//  Created by Khadichabonu Valieva on 09/10/23.
//

import Foundation
import UIKit

struct QuestionOne {
    let question: String
    let option1: String
    let option2: String
    let option3: String
    let option4: String
}

enum Question {
    case option1
    case option2
    case option3
    case option4
    
    var description: String {
        switch self {
        case .option1:
            return
        }
    }
}
