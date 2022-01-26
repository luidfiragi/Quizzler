//
//  ViewController.swift
//  Quizzler
//
//  Created by Emerson Luiz Firagi on 26/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButoon: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
}

