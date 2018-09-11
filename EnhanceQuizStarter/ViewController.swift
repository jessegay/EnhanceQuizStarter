//
//  ViewController.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 9/10/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import GameKit
//import AudioToolbox

class ViewController: UIViewController {
    
// MARK: - Properties. GLOBAL VARIABLES GO HERE. Even if they are immediately assigned a different value via viewDidLoad, they need to be created here first.
    
//    let questionsPerRound = 4
//    var questionsAsked = 0
//    var correctResponses = 0
//    var indexOfSelectedQuestion = 0
//    var gameSound: SystemSoundID = 0
//    Now these are all encapsulated as properties of myQuizManager.
    
    var myQuizManager = QuizManager() // Now all QuizManager properties have been initialized by this instance. Swapped out values for properties of myQuizManager e.g. indexOfSelectedQuestion becomes myQuizManager.indexOfSelectedQuestion
    
    // MARK: - Outlets
 
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        playGameStartSound()
        displayQuestion()
    }
    
    // MARK: - Helpers
    
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

        questionField.text = currentQuestion.question
        option1Button.setTitle("\(currentQuestion.possibleAnswers[0])", for: .normal)
        option2Button.setTitle("\(currentQuestion.possibleAnswers[1])", for: .normal)
        option3Button.setTitle("\(currentQuestion.possibleAnswers[2])", for: .normal)
        option4Button.setTitle("\(currentQuestion.possibleAnswers[3])", for: .normal)
        playAgainButton.isHidden = true
    }
    
    func displayScore() {
        // Hide the answer buttons
        option1Button.isHidden = true
        option2Button.isHidden = true
        option3Button.isHidden = true
        option4Button.isHidden = true
        
        // Display play again button
        playAgainButton.isHidden = false
        questionField.text = "Way to go!\nYou got \(myQuizManager.correctResponses) out of \(myQuizManager.questionsPerRound) correct!"
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
        // Increment the questionsAsked property
        myQuizManager.questionsAsked += 1
        
        //let currentQuestion = myQuizManager.triviaStruct.triviaCollection[myQuizManager.indexOfSelectedQuestion]
        //let correctAnswer = currentQuestion.correctAnswer
        // myQuizManager.buttonPressed = sender.tag // Assigns tag of button pressed to buttonPressed var so it will be availble in the function. Wait, maybe don't need this
        
        //if sender.tag == correctAnswer
            if myQuizManager.isCorrect(optionSelected: sender.tag){
            //myQuizManager.correctResponses += 1
            questionField.text = "You got it!"
        } else {
            questionField.text = "Sorry, wrong answer!"
        }
        loadNextRound(delay: 2)
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        // Show the answer buttons
        option1Button.isHidden = false
        option2Button.isHidden = false
        option3Button.isHidden = false
        option4Button.isHidden = false
        
        myQuizManager.questionsAsked = 0
        myQuizManager.correctResponses = 0
        nextRound()
    }
    

}


