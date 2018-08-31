//
//  ViewController.swift
//  EnhanceQuizStarter
//
//  Created by Pasan Premaratne on 3/12/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import GameKit
//import AudioToolbox

class ViewController: UIViewController {
    
// MARK: - Properties. GLOBAL VARIABLES GO HERE. Even if they are immediately assigned a different value via viewDidLoad, they need to be created here first.
    
//    let questionsPerRound = 4
//    var questionsAsked = 0
//    var correctQuestions = 0
//    var indexOfSelectedQuestion = 0
//    var gameSound: SystemSoundID = 0
//    Now these are all encapsulated as properties of myQuizManager.
    
    var myQuizManager = QuizManager() // Now all QuizManager properties have been initialized by this instance. Swapped out values for properties of myQuizManager e.g. indexOfSelectedQuestion becomes myQuizManager.indexOfSelectedQuestion
    
    
    

    // MARK: - Outlets
 
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        playGameStartSound()
        
        //displayQuestion()
    }
    
    // MARK: - Helpers
//    @IBAction func test(_ sender: UIButton) {
//        testTextChanger()
//    }
//
//    func testTextChanger() {
//        questionField.text = "test string"
//    }
//
    
    
    func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &myQuizManager.gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(myQuizManager.gameSound)
    }
    
    
    func displayQuestion() {
        let currentQuestion = myQuizManager.getRandomQuestion()
//        myQuizManager.indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: myQuizManager.triviaStruct.triviaCollection.count)
//        let currentQuestion = myQuizManager.triviaStruct.triviaCollection[myQuizManager.indexOfSelectedQuestion]
        questionField.text = currentQuestion.question
        playAgainButton.isHidden = true
    }
    
    // Should this be inside the QuizManager class?^^
    
    func displayScore() {
        // Hide the answer buttons
        trueButton.isHidden = true
        falseButton.isHidden = true
        
        // Display play again button
        playAgainButton.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(myQuizManager.correctQuestions) out of \(myQuizManager.questionsPerRound) correct!"
    }
    
    func nextRound() {
        if myQuizManager.questionsAsked == myQuizManager.questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    func loadNextRound(delay seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    // MARK: - Actions
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        // Increment the questions asked counter
        myQuizManager.questionsAsked += 1
        
        // FIXME: Aha! I see both buttons call the checkAnswer method. I need to make 4 buttons and modify the logic accordingly.
        
        // FIXME: NEED TO CHANGE NAME OF SELECTED QUESTION DICT. Initially they used selectedQuestionDict (different from selectedQuestionDictionary which was used in the displayQuestion method. Why are they different names? Couln't they both be the same since they're referring to the current question being asked? I'm going to try using the same name (currentQuestion.) If it breaks, chose another similar name.
        
        let currentQuestion = myQuizManager.triviaStruct.triviaCollection[myQuizManager.indexOfSelectedQuestion]
        let correctAnswer = currentQuestion.correctAnswer
        
        // FIXME: This needs to be changed to "If sender == correct answer... I might need to use string interpolation to get value to compare.
        
        if (sender === trueButton &&  correctAnswer == "True") || (sender === falseButton && correctAnswer == "False") {
            myQuizManager.correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Sorry, wrong answer!"
        }
        
        loadNextRound(delay: 2)
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        // Show the answer buttons
        trueButton.isHidden = false
        falseButton.isHidden = false
        
        myQuizManager.questionsAsked = 0
        myQuizManager.correctQuestions = 0
        nextRound()
    }
    

}


