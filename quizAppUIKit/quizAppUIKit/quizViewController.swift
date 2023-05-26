struct QuizQuestion {
    let question: String
    let options: [String]
    let answer: String
}

let quiz = [
    QuizQuestion(question: "Who is the Prime Minister of India?", options: ["Rahul Gandhi", "Narendra Modi"], answer: "Narendra Modi"),
    QuizQuestion(question: "What is the capital of France?", options: ["Berlin", "Paris"], answer: "Paris"),
    QuizQuestion(question: "What is the name of the largest bone in the human body?", options: ["Femur", "Humerus"], answer: "Femur"),
    QuizQuestion(question: "Who wrote the famous novel 'The Catcher in the Rye'?", options: ["J.D. Salinger", "Ernest Hemingway"], answer: "J.D. Salinger"),
    QuizQuestion(question: "What is the name of the largest desert in the world?", options: ["Sahara", "Gobi"], answer: "Sahara"),
    QuizQuestion(question: "What is the term for a word that sounds the same as another word but has a different meaning and spelling?", options: ["Homonym", "Synonym"], answer: "Homonym"),
    QuizQuestion(question: "What is the name of the largest animal that ever lived?", options: ["Blue whale", "Tyrannosaurus rex"], answer: "Blue whale"),
]

import UIKit

class QuizViewController : UIViewController{
    
    var questionIndex = 0
    
    @objc func checkAnswer(sender: UIButton) {
      let userAnswer = sender.title(for: .normal)
      let correctAnswer = quiz[questionIndex].answer
      if userAnswer == correctAnswer {
        print("Correct!")
        questionIndex+=1
          updateUI()
      } else {
        print("Wrong!")
      }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let questionLabel = UILabel()
        questionLabel.font = UIFont.systemFont(ofSize: 40)
        questionLabel.textColor = .systemBrown
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 0
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(questionLabel)
        NSLayoutConstraint.activate([
            questionLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            questionLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17),
            questionLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 10),
            questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        

        let questionProgressView = UIProgressView()
        questionProgressView.backgroundColor = .systemGray
        questionProgressView.progressTintColor = .darkGray
        questionProgressView.trackTintColor = .red
        questionProgressView.progress = Float(4)/Float(2)
        questionProgressView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(questionProgressView)
        NSLayoutConstraint.activate([
            questionProgressView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            questionProgressView.heightAnchor.constraint(equalToConstant: 2),
            questionProgressView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 10),
            questionProgressView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        let optionOneButton = UIButton()
        optionOneButton.setTitleColor(.white, for: .normal)
        optionOneButton.backgroundColor = .systemBrown
        optionOneButton.titleLabel?.textAlignment = .center
        optionOneButton.layer.cornerRadius = 25
        optionOneButton.addTarget(self, action: #selector(checkAnswer(sender: )), for: .touchUpInside)
        
        optionOneButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(optionOneButton)
        NSLayoutConstraint.activate([
            optionOneButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            optionOneButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10),
            optionOneButton.topAnchor.constraint(equalToSystemSpacingBelow: questionLabel.topAnchor, multiplier: 20),
            optionOneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        let optionTwoButton = UIButton()
        optionTwoButton.setTitleColor(.white, for: .normal)
        optionTwoButton.backgroundColor = .systemBrown
        optionTwoButton.titleLabel?.textAlignment = .center
        optionTwoButton.layer.cornerRadius = 25
        optionTwoButton.addTarget(self, action: #selector(checkAnswer(sender: )), for: .touchUpInside)
        optionTwoButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(optionTwoButton)
        NSLayoutConstraint.activate([
            optionTwoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            optionTwoButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10),
            optionTwoButton.topAnchor.constraint(equalToSystemSpacingBelow: optionOneButton.topAnchor, multiplier: 15),
            optionTwoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        func updateUI(){
            if questionIndex < quiz.count{
                questionLabel.text = quiz[questionIndex].question
                optionOneButton.setTitle(quiz[questionIndex].options[0], for: .normal)
                optionTwoButton.setTitle(quiz[questionIndex].options[1], for: .normal)
                questionProgressView.progress =  Float(questionIndex + 1) / Float(quiz.count)
            }
            else{
                print("You completed the quiz")
            }
        }

        updateUI()
        
    }
}
