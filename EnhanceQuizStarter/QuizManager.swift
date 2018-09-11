//
//  Quiz.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 7/10/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

// This is both quiz and quizmanager. Holds properties and funcs.

/*
 QuizManager ​object ​which ​could:
 1.​initialize ​the ​Questions ​and ​add ​them ​to ​the
 Quiz. Do questions get added all at once, or are they picked one at a time (until questionsAsked == questionsPerRound)?
 2.randomize ​the ​set ​of ​Questions
 3.check ​if ​the ​answer ​is ​correct, ​etc.
 */

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
    //var buttonPressed = 0
    
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
    // TODO: Move checkAnswer() from ViewController to here, then call it from ViewController.Investigating new logic using sender.tag

    func isCorrect(optionSelected: Int) -> Bool {
        let currentQuestion = triviaStruct.triviaCollection[indexOfSelectedQuestion]
        let correctAnswer = currentQuestion.correctAnswer
        
        if optionSelected == correctAnswer {
            correctResponses += 1
            return true
            //questionField.text = "Correct!"
        } else {
            //questionField.text = "Sorry, wrong answer!"
        }
        //loadNextRound(delay: 2)
        return false
    }

// Maybe the questionField changes and loadNextRound() can stay in the ViewController (since they are controlling view related stuff.) I have to figure out how to make them listen to the value that checkAnswer() returns though.





}  // Yes you need this curly brace :)

// Original logic. Delete eventually.

//(sender === option1Button &&  option1Button.currentTitle == correctAnswer) ||
//    (sender === option2Button &&  option2Button.currentTitle == correctAnswer) ||
//    (sender === option3Button &&  option3Button.currentTitle == correctAnswer) ||
//    (sender === option4Button &&  option4Button.currentTitle == correctAnswer)

