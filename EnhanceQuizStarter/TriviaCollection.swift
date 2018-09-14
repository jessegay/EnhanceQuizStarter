//
//  TriviaCollection.swift
//  EnhanceQuizStarter
//
//  Created by Jesse Gay on 8/13/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

struct QuestionsStruct {
    var triviaCollection: [Question] = [
    Question(question: "What does VCO stand for?", correctAnswer: 3, possibleAnswers: ["Voltage Capacitance Oscillator", "Vactrol Controlled Oscillator", "Vector Controlled Oscillator", "Voltage Controlled Oscillator"]),
    
    Question(question: "What does VCA stand for?", correctAnswer: 1, possibleAnswers: ["Vector Crystal Array", "Voltage Controlled Amplifier", "Very Conductive Amplifier", "Verowitz Clanghelm Assumption"]),
    
    Question(question: "What does LFO stand for?", correctAnswer: 2, possibleAnswers: ["Light Filled Optics", "Line Filtered Output", "Low Frequency Oscillator", "Less Favorable Option"]),
    
    Question(question: "What does CV stand for?", correctAnswer: 1, possibleAnswers: ["Closed Voice", "Control Voltage", "Constant Variable", "Clip Vector"]),
    
    Question(question: "Yamaha synthesizers used which scaling system?", correctAnswer: 0, possibleAnswers: ["Hz/V", "V/Octave", "V/Semitone", "Octave/V"]),
    
    Question(question: "Moog synthesizers used which scaling system?", correctAnswer: 1, possibleAnswers: ["Hz/V", "V/Octave", "V/Semitone", "Octave/V"]),
    
    Question(question: "What control system is used to sequence the Juno-60?", correctAnswer: 1, possibleAnswers: ["Sysex", "DCB", "MIDI", "OSC"]),
    
    Question(question: "The TB-303 uses which synchronization system?", correctAnswer: 2, possibleAnswers: ["MIDI", "Clock", "DIN Sync", "Pulse Wave"])]
}

