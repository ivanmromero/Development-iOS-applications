//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ivan Romero on 19/04/2021.
// 
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
