//
//  QuizManager.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 7/26/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

//import Foundation

/*
 QuizManager ​object ​which ​could:
 1.​initialize ​the ​Questions ​and ​add ​them ​to ​the
 Quiz. Do questions get added all at once, or are they picked one at a time (until questionsAsked == questionsPerRound)?
 2.randomize ​the ​set ​of ​Questions
 3.check ​if ​the ​answer ​is ​correct, ​etc.
 */

//I think I can move most a BUNCH of the quiz actions from ViewDidLoad into here (the mechanism for picking a random number that is used as an index to get a question from the TriviaCollection object. EDIT, maybe quiz parameters go in Quiz object, but the mechanics go here (picking, checking, etc.)

// MARK: initialize ​the ​Questions ​and ​add ​them ​to ​the Quiz.
import GameKit


//class QuizManager {
//    var myQuiz = Quiz()
//    let triviaStruct = QuestionsStruct ()
//    
//    func displayQuestion() {
//        myQuiz.indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: triviaStruct.triviaCollection.count)
//        let currentQuestion = triviaStruct.triviaCollection[myQuiz.indexOfSelectedQuestion]
//        questionField.text = currentQuestion.question
//        playAgainButton.isHidden = true
//    }
//}

