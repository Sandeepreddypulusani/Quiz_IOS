//
//  QuestionBank.swift
//  Word_Quiz_Sandeep_Reddy_Pulusani
//
//  Created by Sandeep Reddy Pulusani on 2020-04-15.
//  Copyright © 2020 Sandeep Reddy Pulusani. All rights reserved.
//

import Foundation


class QuestionBank {

 struct Quiz: Decodable {
     let id: String
     let Question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let answer: String

 }
 
   var list = [Question]()
 init() {
    
    // Getting data from API
                    let urlString = "https://geeksnabe.org/Quiz/quiz.php"
                    guard let url = URL(string: urlString) else { return }
        
                    URLSession.shared.dataTask(with: url) { (data, resp, err) in
        
                            
                        
                        if let err = err {
 
                            print(err)
                            return
                        }

                        // successful
                        do {
                    let quizzes = try JSONDecoder().decode([Quiz].self, from: data!)
                                                          quizzes.forEach({ (quizz) in
                                                              print(quizz.Question)
                            
                self.list.append(Question(questionText: quizz.Question, choiceA: quizz.optionA, choiceB: quizz.optionB, choiceC: quizz.optionC, choiceD: quizz.optionD, answer: Int(quizz.answer)!))
                                                          })


                        } catch let jsonError {

                            print(jsonError)
       
                        }

        
                    }.resume()
                
    
}
}
