//
//  ViewController.swift
//  Quizzler
//
//  Created by Emerson Luiz Firagi on 26/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButoon: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    // MARK: - Variaveis
    
    var quizBrain = QuizBrain()
    
    // MARK: - Life Cicle View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    // MARK: - Functions
    
    @objc func updateUi(){
        questionLabel.text = quizBrain.getQuestion()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButoon.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
    
    // MARK: - Actions
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnser = sender.currentTitle!
        let userGoItRight = quizBrain.checkAnswer(userAnser)
        
        if userGoItRight{
            sender.backgroundColor = .green
        }else{
            sender.backgroundColor = .red
        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    }
}
