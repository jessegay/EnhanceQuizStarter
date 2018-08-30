//
//  Quiz.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 7/10/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

// This is both quiz and quizmanager. Holds properties and funcs.

import AudioToolbox // This is for SystemSoundID. Does it need to be in here or should it be in the ViewController (for use by VC or quiz manager)? Asked in Slack. If I comment it out in ViewController the app seems to work.
import GameKit

class Quiz {
    let questionsPerRound = 4
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion = 0
    var gameSound: SystemSoundID = 0
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    //class QuizManager {
//        var myQuiz = Quiz()
    let triviaStruct = QuestionsStruct ()
        
        func displayQuestion() {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: triviaStruct.triviaCollection.count)
            let currentQuestion = triviaStruct.triviaCollection[indexOfSelectedQuestion]
            questionField.text = currentQuestion.question
            playAgainButton.isHidden = true
        }
    }
    

