//
//  Question.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 7/10/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation //Do I need this?

struct Question {
    var question: String
    var correctAnswer: String
    var possibleAnswers: [String]
}

/*

var triviaLetStruct: [Question] = []          // these must be encapsulated in something (can't be top level)
//triviaLetStruct += [question1, question2]

// Sarah says put += line into a func, struct, or class. I think Class might be better but trying func...
func TriviaMaker(question: Question) -> [Question] {
    triviaLetStruct += [question]
    return triviaLetStruct
}


var quiz = TriviaMaker(question: question1)






class Quiz {
    var questions: [Question]
    init(questions: [Question]) {
        self.questions = questions
    }
    
    func AddQuestionsToClass(question: Question) -> [Question] {
        questions += [question]
        return questions
    }
}

var myQuizClass = Quiz(questions: [Question(question: "Which series of workstation was introduced by Yamaha in 2001?", correctAnswer: "Motif", possibleAnswers: ["Tyros", "Phantom", "Motif", "Montage"])])
myQuizClass.AddQuestionsToClass(Question(question: "What is a 909?", correctAnswer: "A drum machine", possibleAnswers: ["An area code", "A drum machine"]))





// Adrian says: define a bunch of questions as consts (let question1 = Question(...), etc.) then add these to a collection.

*/
