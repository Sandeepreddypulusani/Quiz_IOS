//
//  Question.swift
//  Word_Quiz_Sandeep_Reddy_Pulusani
//
//  Created by Sandeep Reddy Pulusani on 2020-04-15.
//  Copyright © 2020 Sandeep Reddy Pulusani. All rights reserved.
//

import Foundation
class Question {

    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int) {
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}
