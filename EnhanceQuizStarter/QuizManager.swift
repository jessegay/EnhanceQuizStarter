//
//  Quiz.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 7/10/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

// This is both quiz and quizmanager. Holds properties and methods.

import AudioToolbox // This is for SystemSoundID. Does it need to be in here or should it be in the ViewController (for use by VC or quiz manager)? Asked in Slack. If I comment it out in ViewController the app seems to work.
import GameKit

class QuizManager {
    // MARK: Properties
    let questionsPerRound = 4
    var questionsAsked = 0
    var correctResponses = 0
    var indexOfSelectedQuestion = 0
    var gameSound: SystemSoundID = 0
    var alreadyAskedQuestions: [Int] = [] // use indices
 
    let triviaStruct = QuestionsStruct () //This includes the array of questions
    // MARK: Methods
    
    // getRandomQuestion
    func getRandomQuestion() -> Question {
    // Get random number. This is an intermediate var (which is checked for repetition before being assigned to indexOfSelectedQuestion)
    var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: triviaStruct.triviaCollection.count)
    // Check for repetition
    while alreadyAskedQuestions.contains(randomNumber)  {
        randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: triviaStruct.triviaCollection.count)
        }
        indexOfSelectedQuestion = randomNumber
        // Add to alreadyAskedQuestions
        alreadyAskedQuestions.append(indexOfSelectedQuestion)
        // return the question
        return triviaStruct.triviaCollection[indexOfSelectedQuestion]
        }
    // Check answer

    func isCorrect(optionSelected: Int) -> Bool {
        let currentQuestion = triviaStruct.triviaCollection[indexOfSelectedQuestion]
        let correctAnswer = currentQuestion.correctAnswer
        
        if optionSelected == correctAnswer {
            correctResponses += 1
            return true
            } else {
        }
        return false
    }
} 