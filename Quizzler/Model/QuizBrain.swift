//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Emerson Luiz Firagi on 26/01/22.
//

import Foundation

struct QuizBrain{
    var questionNumber = 0
    var score = 0

    let quiz = [
            Questions(question: "A slug's blood is green.", answer: "True"),
            Questions(question: "Approximately one quarter of human bones are in the feet.", answer: "True"),
            Questions(question: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
            Questions(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
            Questions(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
            Questions(question: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
            Questions(question: "You can lead a cow down stairs but not up stairs.", answer: "False"),
            Questions(question: "Google was originally called 'Backrub'.", answer: "True"),
            Questions(question: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
            Questions(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
            Questions(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
            Questions(question: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
        ]
    
    func getQuestion()-> String{
        return quiz[questionNumber].question
    }
    
    mutating func checkAnswer(_ userAnswer: String)-> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getProgress()-> Float{
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    func getScore()-> Int{
        return score
    }
}
