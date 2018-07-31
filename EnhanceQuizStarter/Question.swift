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
    var answer: String
    var possibleAnswers: [String]
}

let myQuestion = Question(question: "What is love?", answer: "Love is first widening my eyes...", possibleAnswers: ["Love is first widening my eyes...","I don't know", "Nobody knows", "Seriously?", "A dream we both agree on"])

let test = myQuestion.possibleAnswers[2]

let question1 = Question(question: "The electronic \"string\" sounds heard on Gary Numan's \"Cars\" were produced by which Moog synth?", answer: "Polymoog", possibleAnswers: ["Polymoog", "Multimoog", "Minimoog", "Memorymoog"])
let question2 = Question(question: "Which series of workstation was introduced by Yamaha in 2001?", answer: "Motif", possibleAnswers: ["Tyros", "Phantom", "Motif", "Montage"])

var triviaLetStruct: [Question] = [question1, question2]
// triviaLetStruct += [question2]












class Quiz {
    var questions: [Question]
    init(questions: [Question]) {
        self.questions = questions
    }
}

// Adrian says: define a bunch of questions as consts (let question1 = Question(...), etc.) then add these to a collection.

let triviaStruct: [Question] = [Question(question: "What is love?", answer: "Love is first widening my eyes...", possibleAnswers: ["Love is first widening my eyes...", "Nobody knows", "Seriously?", "A dream we both agree on"]), Question(question: "What time is it?", answer: "Time to get ill", possibleAnswers: ["4pm", "Time to get ill", "It's your time", "Time is a flat circle"])]

let trivia: [[String : String]] = [
    ["Question": "Only female koalas can whistle", "Answer": "False"],
    ["Question": "Blue whales are technically whales", "Answer": "True"],
    ["Question": "Camels are cannibalistic", "Answer": "False"],
    ["Question": "All ducks are birds", "Answer": "True"]
]
