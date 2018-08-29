//
//  Quiz.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 7/10/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//


import AudioToolbox // This is for SystemSoundID. Does it need to be in here or should it be in the ViewController (for use by VC or quiz manager?

/* I'm not sure I need a separate quiz object. The quiz manager can deal with all the aspects, and if it includes
let questionsPerRound = 4
var questionsAsked = 0
var correctQuestions = 0
var indexOfSelectedQuestion = 0

var gameSound: SystemSoundID = 0
 
 ** I'm not sure if gameSound should be in here.

then those properties will define the quiz. ***OTOH, I could have a quiz object, and access the properties via dot notation.
*/
class Quiz {
    let questionsPerRound = 4
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion = 0
    
    var gameSound: SystemSoundID = 0

}
