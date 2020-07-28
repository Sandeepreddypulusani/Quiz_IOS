//
//  QuizViewController.swift
//  Word_Quiz_Sandeep_Reddy_Pulusani
//
//  Created by Sandeep Reddy Pulusani on 2020-04-15.
//  Copyright © 2020 Sandeep Reddy Pulusani. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController{
    
    // Getting all the labels from story board
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var countTimer: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    
    //Setting the default values for some variables
        let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var selectedAnswer: Int = 0
    var count:Int = 10
    var timer:Timer = Timer()
    
    
    // getting all the buttons from storyboard
    @IBOutlet weak var optionA: UIButton!
    
    @IBOutlet weak var optionB: UIButton!
    
    @IBOutlet weak var optionC: UIButton!
    
    @IBOutlet weak var optionD: UIButton!

    override func viewDidAppear(_ animated: Bool) {
        
        // on view appear ro display alert for user
            let alerts = UIAlertController(title: "Note", message: "Correct Answer takes you to next question, whereas wrong answer will end your Quiz", preferredStyle: .alert)
                              let restartActions = UIAlertAction(title: "Start Quiz", style: .default, handler: {action in self.some()})
                              alerts.addAction(restartActions)
                              present(alerts, animated: true, completion: nil)
     
    
    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    

//performs when user selected any option
    @IBAction func answerPressed(_ sender: UIButton) {
                if sender.tag == selectedAnswer {
                    print("Correct Answer")
                }
                else
                {
                    print("Wrong Answer")
                    performSegue(withIdentifier: "quizfail", sender: self)
                }
                 questionNumber += 1
                updateQuestion()
        
        
        
    }
    
    func some()
    {
        updateQuestion()
        updateUI()
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
               
    }
    
    // used for timer countdown
    @objc func counter() -> Void {
        count -= 1
        countTimer.text = "Time Remaining : \(String(count)) Sec"
        if(count <= 0)
        {
             performSegue(withIdentifier: "timeup", sender: self)
        }
    }
    


    
// update question and options
   func updateQuestion() {
    

    if questionNumber < allQuestions.list.count {
        questionLabel.text = allQuestions.list[questionNumber].question
        optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
        optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
        optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
        optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
        selectedAnswer = allQuestions.list[questionNumber].correctAnswer
               
            }
            else {
               questionNumber = 0
               updateQuestion()
         performSegue(withIdentifier: "quizpass", sender: self)
            }
            updateUI()
    count = 10
        }
        
        func updateUI() {
            
            questionCounter.text = "Question: \(questionNumber + 1) / \(allQuestions.list.count)"
        }
        

        
    }



