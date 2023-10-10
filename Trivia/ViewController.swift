//
//  ViewController.swift
//  Trivia
//
//  Created by Khadichabonu Valieva on 07/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var question_number: UILabel!
    @IBOutlet weak var question_type: UILabel!
    @IBOutlet weak var question: UITextField!
    @IBOutlet var Option1: UIButton!
    @IBOutlet var Option2: UIButton!
    @IBOutlet var Oprion3: UIButton!
    @IBOutlet var Option4: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        func displayQuestion() {
               let currentQuestion = questions[currentQuestionIndex]
               questionLabel.text = currentQuestion.text
               
               for (index, button) in answerButtons.enumerated() {
                   button.setTitle(currentQuestion.choices[index], for: .normal)
               }
           }
        
        // Do any additional setup after loading the view.
    }
    



}
