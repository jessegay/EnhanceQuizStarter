//
//  TriviaCollection.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 8/13/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

//import Foundation

// Elena has a Struct (Quiz) that contains a single constant, questions, which is an array of Question objects (her "Quiz" functions like my "Trivia Collection".) How is this better than my method of just declaring the constant triviaCollection, as I do below?
//
//In order to be like her code, I could do something like:
//
//struct QuizStruct {
//    var triviaCollection = [question1, question2, question3, question4, question5, question6, question7, question8]
//}

struct QuestionsStruct {
    
    let question1 = Question(question: "What does VCO stand for?", correctAnswer: "Voltage Controlled Oscillator", possibleAnswers: ["Voltage Capacitance Oscillator", "Vactrol Controlled Oscillator", "Vector Controlled Oscillator", "Voltage Controlled Oscillator"])
    
    let question2 = Question(question: "What does VCA stand for?", correctAnswer: "Voltage Controlled Amplifier", possibleAnswers: ["Vector Crystal Array", "Voltage Controlled Amplifier", "Very Conductive Amplifier", "Verowitz Clanghelm Assumption"])
    
    let question3 = Question(question: "What does LFO stand for?", correctAnswer: "Low Frequency Oscillator", possibleAnswers: ["Light Filled Optics", "Line Filtered Output", "Low Frequency Oscillator", "Less Favorable Option"])
    
    let question4 = Question(question: "What does CV stand for?", correctAnswer: "Control Voltage", possibleAnswers: ["Closed Voice", "Control Voltage", "Constant Variable", "Clip Vector"])
    
    let question5 = Question(question: "Yamaha synthesizers used which scaling system?", correctAnswer: "Hz/V", possibleAnswers: ["Hz/V", "V/Octave", "V/Semitone", "Octave/V"])
    
    let question6 = Question(question: "Moog synthesizers used which scaling system?", correctAnswer: "V/Octave", possibleAnswers: ["Hz/V", "V/Octave", "V/Semitone", "Octave/V"])
    
    let question7 = Question(question: "What control system is used to sequence the Juno-60?", correctAnswer: "DCB", possibleAnswers: ["Sysex", "DCB", "MIDI", "OSC"])
    
    let question8 = Question(question: "The TB-303 uses which synchronization system?", correctAnswer: "DIN Sync", possibleAnswers: ["MIDI", "Clock", "DIN Sync", "Pulse Wave"])

     lazy var triviaCollection = [question1, question2, question3, question4, question5, question6, question7, question8]
    //Why do I have to use lazy?
}
//
// let triviaCollection = [question1, question2, question3, question4, question5, question6, question7, question8]
//
//let question1 = Question(question: "What does VCO stand for?", correctAnswer: "Voltage Controlled Oscillator", possibleAnswers: ["Voltage Capacitance Oscillator", "Vactrol Controlled Oscillator", "Vector Controlled Oscillator", "Voltage Controlled Oscillator"])
//
//let question2 = Question(question: "What does VCA stand for?", correctAnswer: "Voltage Controlled Amplifier", possibleAnswers: ["Vector Crystal Array", "Voltage Controlled Amplifier", "Very Conductive Amplifier", "Verowitz Clanghelm Assumption"])
//
//let question3 = Question(question: "What does LFO stand for?", correctAnswer: "Low Frequency Oscillator", possibleAnswers: ["Light Filled Optics", "Line Filtered Output", "Low Frequency Oscillator", "Less Favorable Option"])
//
//let question4 = Question(question: "What does CV stand for?", correctAnswer: "Control Voltage", possibleAnswers: ["Closed Voice", "Control Voltage", "Constant Variable", "Clip Vector"])
//
//let question5 = Question(question: "Yamaha synthesizers used which scaling system?", correctAnswer: "Hz/V", possibleAnswers: ["Hz/V", "V/Octave", "V/Semitone", "Octave/V"])
//
//let question6 = Question(question: "Moog synthesizers used which scaling system?", correctAnswer: "V/Octave", possibleAnswers: ["Hz/V", "V/Octave", "V/Semitone", "Octave/V"])
//
//let question7 = Question(question: "What control system is used to sequence the Juno-60?", correctAnswer: "DCB", possibleAnswers: ["Sysex", "DCB", "MIDI", "OSC"])
//
//let question8 = Question(question: "The TB-303 uses which synchronization system?", correctAnswer: "DIN Sync", possibleAnswers: ["MIDI", "Clock", "DIN Sync", "Pulse Wave"])

