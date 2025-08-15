//
//  ViewController.swift
//  Trivia
//
//  Created by Khadichabonu Valieva on 13/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentQuestion: UILabel!
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    private var questions: [TriviaQuestion] = [
        TriviaQuestion(category: "Geography", question: "What is the capital of France?", correctAnswer: "Paris", incorrectAnswers: ["Berlin", "Madrid", "Rome"]),
            TriviaQuestion(category: "Science", question: "Which planet is known as the Red Planet?", correctAnswer: "Mars", incorrectAnswers: ["Earth", "Jupiter", "Venus"]),
            TriviaQuestion(category: "History", question: "Who is the first president of the United States?", correctAnswer: "George Washington", incorrectAnswers: ["Thomas Jefferson", "John Adams", "Benjamin Franklin"])]
    private var currQuestionIndex = 0
    private var numCorrectQuestions = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion(withQuestionIndex: currQuestionIndex)

    }
    
    private func updateQuestion(withQuestionIndex questionIndex: Int) {
      currentQuestion.text = "Question: \(questionIndex + 1)/\(questions.count)"
      let question = questions[questionIndex]
      questionLabel.text = question.question
      categoryLabel.text = question.category
      let answers = ([question.correctAnswer] + question.incorrectAnswers).shuffled()
      if answers.count > 0 {
        answerButton1.setTitle(answers[0], for: .normal)
      }
      if answers.count > 1 {
        answerButton2.setTitle(answers[1], for: .normal)
        answerButton2.isHidden = false
      }
      if answers.count > 2 {
        answerButton3.setTitle(answers[2], for: .normal)
        answerButton3.isHidden = false
      }
      if answers.count > 3 {
        answerButton4.setTitle(answers[3], for: .normal)
        answerButton4.isHidden = false
      }
    }
    
    private func updateToNextQuestion(answer: String) {
      if isCorrectAnswer(answer) {
        numCorrectQuestions += 1
      }
        
        if currQuestionIndex < questions.count - 1 {
            currQuestionIndex += 1
            updateQuestion(withQuestionIndex: currQuestionIndex)
        }
        else {
            showFinalScore()
        }
    }
    
    private func isCorrectAnswer(_ answer: String) -> Bool {
      return answer == questions[currQuestionIndex].correctAnswer
    }
    
    private func showFinalScore() {
      let alertController = UIAlertController(title: "Game over!",
                                              message: "Final score: \(numCorrectQuestions)/\(questions.count)",
                                              preferredStyle: .alert)
      let resetAction = UIAlertAction(title: "Restart", style: .default) { [unowned self] _ in
        currQuestionIndex = 0
        numCorrectQuestions = 0
        updateQuestion(withQuestionIndex: currQuestionIndex)
      }
      alertController.addAction(resetAction)
      present(alertController, animated: true, completion: nil)
    }

    @IBAction func didTapAnswerButton0(_ sender: UIButton) {
      updateToNextQuestion(answer: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func didTapAnswerButton1(_ sender: UIButton) {
      updateToNextQuestion(answer: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func didTapAnswerButton2(_ sender: UIButton) {
      updateToNextQuestion(answer: sender.titleLabel?.text ?? "")
    }
    
    @IBAction func didTapAnswerButton3(_ sender: UIButton) {
      updateToNextQuestion(answer: sender.titleLabel?.text ?? "")
    }
}
